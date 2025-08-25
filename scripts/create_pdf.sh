#!/bin/bash
#
# Create a PDF.
#
# Or: create the draft paper from the Markdown files
#
# Usage:
#
#   ./scripts/create_pdf.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_pdf.sh"
    echo " "
    exit 42
fi

build_folder=build
build_file="${build_folder}/README.md"

rm -rf ${build_folder}
mkdir ${build_folder}

if [ ! -d ${build_folder} ]; then 
  echo "Error: failed to create build folder '${build_folder}'"
  exit 1
fi

echo "Creating single-file document at ${build_file}"

# Concatenate all markdown files, convert those to one PDF
echo "# Improving the ELIXIR evaluation for both management and trainers" > ${build_file}
echo " " >> ${build_file}
echo "- Authors: Richèl Bilderbeek, Daniel Wibberg" >> ${build_file}
echo " " >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/abstract.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/introduction.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/research_questions.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/methods_1.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/methods_2.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/methods_3.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/methods_4.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/results_1.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/results_2.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/results_3.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/results_4.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/conclusion.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/discussion.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
echo "## Appendix" >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/elixir_evaluation.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}
cat docs/presentations/README.md >> ${build_file}
echo " " >> ${build_file}; echo "\pagebreak" >> ${build_file}; echo " " >> ${build_file}

echo "Convert MkDocs to regular Markdown"
Rscript -e "remotes::install_github(\"richelbilderbeek/mkdocs2md\")"
Rscript -e "mkdocs2md::convert_file_to_markdown(\"${build_file}\", \"${build_file}\")"
cp scripts/guide_style.theme $build_folder

echo "Convert Markdown to PDF"
cd ${build_folder} || exit 41

#
# We are in the 'build' folder
#

# Table of Content
# Code has highlights following the tango color scheme
# Thinner margin of 0.5 inch
# Do not cut code blocks
pandoc README.md -o paper.pdf --toc --toc-depth=1 --highlight-style=guide_style.theme -V geometry:margin=0.5in
