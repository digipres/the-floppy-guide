Copy That Floppy!
=================

As part of the [Future Nostalgia project](https://www.lib.cam.ac.uk/future-nostalgia), we have put together a guide on preserving floppy disks. 

<center>
<h3><a href="https://www.digipres.org/the-floppy-guide/">Click here to view the "Copy That Floppy!" guide.</a></h3>
</center>

Design Resources
----------------

The [designs folder](./designs/) includes the source files for the various designs created by the Future Nostalgia project, for re-use as per the [license](./LICENSE).  This includes a set of [reasonably accurate vector outlines of floppy disks of various sizes](./designs/floppies/).

Web Publication Build Process
-----------------------------

The publication process is controlled by the `Makefile`, which contains all the technical details.

- Optionally:
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

The production version was originally generated from the Google Doc. However, now that consultation process is over, this Markdown version becomes the master document.  As such, a few things have been tweaked here that were difficult to fix when generating via DOCX:

- Image cropping and arrangement needed fixing to match the original.
- Switched embedded images to use proper `figure` blocks so they look nicer.
- Some DOCX section headers had numbers in, others did not. Stripped them out so the publication tools can handle section numbering.
- Cleaned up some stray HTML markup that wasn't needed.
- Noted that there are currently hardcoded cross-references to sections etc. and that these could be fixed later ([here](https://github.com/digipres/the-floppy-guide/issues/4)).

Maintenance
-----------

After the end of the Future Nostalgia project, the Digital Preservation Coalition will endeavour to ensure this publication remains available and facilitate it's ongoing maintenance and development. 