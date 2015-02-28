package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
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

	// Parse each XML file that we're interested in.
	files, err := ioutil.ReadDir(xmlDir)
	if err != nil {
		fmt.Printf("error reading xml dir %s: %v\n", xmlDir, err)
		os.Exit(1)
	}

	for _, file := range files {
		fileName := file.Name()

		// Ignore non-XML files.
		if !strings.HasSuffix(fileName, ".xml") {
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
	}
}
