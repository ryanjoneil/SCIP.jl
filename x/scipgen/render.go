package main

import (
	"bytes"
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
			defines = append(defines, d.Name)
		}
		return strings.Join(defines, ", ")
	},
}
