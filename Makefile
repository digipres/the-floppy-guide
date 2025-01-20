# Currently, specify all the ePubs we want. Can probabably wildcard
pubs = implement/imaging-floppy-disks/exports/index.epub prof-development/dp-competency/exports/index.epub

all: $(pubs) myst

$(pubs): %/exports/index.epub: %/index.md
	cd $(dir $<); pandoc index.md -o exports/index.epub

myst:
	myst build --all