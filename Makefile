# Currently, specify all the outputs we want:
pubs = imaging-obscure-floppies.epub imaging-obscure-floppies.pdf

all: $(pubs)

imaging-obscure-floppies.epub:
	pandoc "index.md" \
        -f commonmark_x \
        --toc \
        --standalone \
        --metadata=cover-image:"media/image7.png" \
        -o "imaging-obscure-floppies.epub"

imaging-obscure-floppies.pdf:
	myst build --all


clean:
	rm $(pubs)
