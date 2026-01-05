Copy That Floppy!
=================

As part of the [Future Nostalgia project](https://www.lib.cam.ac.uk/future-nostalgia), we have put together a guide on preserving floppy disks. 

<center>
<h3><a href="https://digipres.org/goto/floppy-guide">Click here to view the "Copy That Floppy!" guide.</a></h3>
</center>


Web Publication Build Process
-----------------------------

The publication process is controlled by the `Makefile`, which contains all the technical details.

- It downloads the source Google Document as a DOCX (because this brings embedded media with it)
- It uses `pandoc` to convert that to Markdown + media files.
- It patches in a YAML frontmatter block (`index_head.md`) to set up the document.
- It uses `pandoc` to generate an ePub version.
- It uses [MystMD](https://mystmd.org/guide/installing) to generate web and PDF versions.

Notes:

- Conversion didn't use commonmark_x because it added anchors to the headings which MyST does not support.
- PDF generation only works if you remove styling inside hyperlinks (underlines) as this confuses Typst.
- Some things, like big tables, might not convert well. These are best modified at source (GDoc).
- The ePub generation process can pick up some metadata from the source document.
- When developing locally, you can use `make from-gdoc serve` to rebuild and then look at the results.

Maintenance
-----------

After the end of the Future Nostalgia project, the Digital Preservation Coalition will endeavour to ensure this publication remains available and facilitate it's ongoing maintenance and development. 