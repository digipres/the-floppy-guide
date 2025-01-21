# The publication formats we want to generate:
pubs = index.epub index.pdf

# The default make target, all of the above plus HTML:
all: $(pubs) myst

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
