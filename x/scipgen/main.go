package main

import (
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"path/filepath"
	"regexp"
	"strconv"
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
		// log.Println(scipCDef)

		for _, section := range doxygen.CompoundDef.SectionDefs {
			if section.Kind != "define" {
				continue
			}

			for _, member := range section.MemberDefs {
				if member.Kind != section.Kind {
					continue
				}

				// Is it a number?
				init := member.Initializer
				_, err = strconv.Atoi(init)
				if err == nil {
					log.Printf(" --> %s (int)= %s\n", member.Name, init)
					continue
				}

				_, err = strconv.ParseFloat(init, 64)
				if err == nil {
					log.Printf(" --> %s (float)= %s\n", member.Name, init)
					continue
				}

				// Or a string?
				if (strings.HasPrefix(init, `"`) && strings.HasSuffix(init, `"`)) ||
					(strings.HasPrefix(init, `'`) && strings.HasSuffix(init, `'`)) {
					log.Printf(" --> %s (str)= %s\n", member.Name, init)
					continue
				}
			}
		}
	}
}
