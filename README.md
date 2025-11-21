The Floppy Guide (TBC) 
======================

As part of the [Future Nostalgia project](https://www.lib.cam.ac.uk/future-nostalgia), we are putting together a guide on preserving floppy disks. The guide is currently in the reviewing stage. The draft version of the guide can be accessed [here](https://docs.google.com/document/d/1ZfPaXMOXCphfnDKKRoImzccHtY2M2hBZLI5mP65RNpk/edit?usp=sharing). You will be able to leave any comments or suggestions.


Web Publication Build Process
-----------------------------


Started by downloading the source Google Document as a DOCX file. Then:

```
pandoc Guide\ -\ Reading\ obscure\ floppy\ disk\ formats.docx -o index.md --wrap=none -t commonmark --extract-media=.
```

Note didn't use commonmark_x because it added anchors to the headings which MyST does not support.

Then had to tweak:

- Move some information like title and authors into structured frontmatter.
- Remove styling inside hyperlinks (underlines) as this confuses Typst.
- To stop the big table of controllers getting lost off the end of the page in the PDF, I had to break it up into a sequence of tables. Might work better as headings and figures.


ePub generation:

```
pandoc index.md -o exports/imaging-floppy-disks.epub --metadata title="A Guide To Imaging Obscure Floppy Disk Formats"
```

But you don't need the metadata field there if you add it to the frontmatter.



MystMD setup

https://mystmd.org/guide/installing

npm install -g mystmd

myst start



Enable Pages

https://github.com/digipres/guide-to-imaging-obscure-floppies/settings/pages


Makefile


make from-gdoc serve

