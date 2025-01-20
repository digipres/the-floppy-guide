A Guide To Imaging Obscure Floppy Disk Formats
==============================================




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

Makefile
