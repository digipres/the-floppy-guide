# The publication formats we want to generate:
pubs = index.epub index.pdf

# The default make target, all of the above plus HTML:
all: from-gdoc $(pubs) myst

# Generate the ePub using Pandoc:
index.epub: index.md
	pandoc "index.md" \
        -f commonmark_x \
        --toc \
        --standalone \
        --metadata=cover-image:"cover.png" \
        -o "index.epub"

# Generate the PDF using Typst via MystMD:
index.pdf: index.md
	myst build --pdf

# Build the HTML:
myst: index.md
	myst build --html

# Remove all the outputs:
clean:
	rm -fr $(pubs) _build

# How the source is initially generated:
from-gdoc: 
	echo "Regenerating and overwriting index.md from the source DOCX file!"
	curl -L -o source.docx "https://docs.google.com/document/u/0/export?format=docx&id=1ZfPaXMOXCphfnDKKRoImzccHtY2M2hBZLI5mP65RNpk"
	pandoc source.docx -o index_body.md --wrap=none -t commonmark --extract-media=.
	cat index_head.md index_body.md > index.md

# How the 'development' version is run:
serve:
	myst start