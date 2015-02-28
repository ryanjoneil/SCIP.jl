package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"regexp"
	"strings"
)

// Contains regexes for file patterns we wish to parse.
var FILE_PATTERNS = []*regexp.Regexp{
	regexp.MustCompile(`^def_`),
	regexp.MustCompile(`^scip_`),
	regexp.MustCompile(`^scipdefplugins_`),

	regexp.MustCompile(`^cons__`),
	regexp.MustCompile(`^pub__`),
	regexp.MustCompile(`^type__`),
}

func main() {
	if len(os.Args) != 4 {
		fmt.Printf("usage: %s xml-dir template-dir src-dir\n", os.Args[0])
		os.Exit(1)
	}

	xmlDir := os.Args[1]
	tmplDir := os.Args[2]
	srcDir := os.Args[3]

	// Parse each XML file that we're interested in.
	files, err := ioutil.ReadDir(xmlDir)
	if err != nil {
		fmt.Printf("error reading xml dir %s: %v\n", xmlDir, err)
		os.Exit(1)
	}

	info := NewSCIPInfo()
	for _, file := range files {
		fileName := file.Name()

		// Ignore non-XML files.
		if file.IsDir() || !strings.HasSuffix(fileName, ".xml") {
			continue
		}

		// Make sure the file name matches at least one pattern.
		matches := false
		for _, pattern := range FILE_PATTERNS {
			if pattern.Match([]byte(fileName)) {
				matches = true
				break
			}
		}

		if !matches {
			continue
		}

		log.Printf("parsing %s\n", fileName)
		doxygen, err := Parse(filepath.Join(xmlDir, fileName))
		if err != nil {
			fmt.Println(err)
			os.Exit(1)
		}

		info.Convert(doxygen)
	}

	// Render templates into source directory.
	err = filepath.Walk(tmplDir, func(path string, fileInfo os.FileInfo, err error) error {
		if err != nil {
			return err
		}

		if fileInfo.IsDir() {
			return nil
		}

		// Convert template path to source path.
		relPath, err := filepath.Rel(tmplDir, path)
		if err != nil {
			return err
		}
		srcPath := filepath.Join(srcDir, relPath)

		// Render template.
		log.Printf("rendering %s -> %s", path, srcPath)
		return info.Render(path, srcPath)
	})
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}

	log.Println("done")
}
