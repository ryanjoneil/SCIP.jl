package main

import (
	"bytes"
	"fmt"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
	"text/template"
)

func (info *SCIPInfo) Render(tmplPath, srcPath string) error {
	// Read in template.
	contents, err := ioutil.ReadFile(tmplPath)
	if err != nil {
		return err
	}

	// Parse the template contents.
	tmpl, err := template.New(tmplPath).Funcs(funcMap).Parse(string(contents))
	if err != nil {
		return err
	}

	// Render template to a buffer.
	buffer := bytes.NewBuffer([]byte{})
	if err = tmpl.Execute(buffer, info); err != nil {
		return err
	}

	// See if we need to create a new directory.
	parentDir := filepath.Dir(srcPath)
	if _, statErr := os.Stat(parentDir); os.IsNotExist(statErr) {
		if err = os.MkdirAll(parentDir, 0755); err != nil {
			return err
		}
	}

	// Write to destination file.
	if err = ioutil.WriteFile(srcPath, buffer.Bytes(), 0644); err != nil {
		return err
	}

	return nil
}

// Template functions for the above
var funcMap = template.FuncMap{
	"exportDefines": func(s *SCIPInfo) string {
		defines := []string{}
		for _, d := range s.Defines {
			defines = append(defines, d.FinalName)
		}
		return strings.Join(defines, ", ")
	},

	"exportFunctions": func(functions []InfoFunction) string {
		funcNames := []string{}
		for _, f := range functions {
			funcNames = append(funcNames, f.FinalName)
		}
		return strings.Join(funcNames, ", ")
	},

	"exportTypeAliases": func(s *SCIPInfo) string {
		aliases := []string{}
		for _, d := range s.TypeAliases {
			aliases = append(aliases, d.FinalName)
		}
		return strings.Join(aliases, ", ")
	},

	"functionArgNames": func(f InfoFunction) string {
		argNames := []string{}
		for _, f := range f.Arguments {
			argNames = append(argNames, f.FinalName)
		}
		return strings.Join(argNames, ", ")
	},

	"functionArgs": func(f InfoFunction) string {
		if len(f.Arguments) < 1 {
			return "()"
		}

		argTypes := []string{}
		argNames := []string{}
		for _, f := range f.Arguments {
			argTypes = append(argTypes, fmt.Sprintf("%s,", f.FinalType))
			argNames = append(argNames, f.FinalName)
		}
		return strings.Join(
			[]string{
				fmt.Sprintf("(%s)", strings.Join(argTypes, " ")),
				strings.Join(argNames, ", "),
			},
			", ",
		)
	},
}
