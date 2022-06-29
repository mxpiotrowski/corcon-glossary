# corcon-glossary
Glossary for the Corpora and Concepts project

Set up for use with [Cosma](https://cosma.graphlab.fr/en/) ([manual](https://cosma.graphlab.fr/en/docs/user-manual/)) or [Zettlr](https://www.zettlr.com) ([manual](https://docs.zettlr.com/en/)).

## Bibliography

The bibliography used by the glossary entries is in `bib/references.bib`.  Cosma needs a bibliography in CSL-JSON format; it can be generated using the makefile by saying `make references.json`.

## Tools

A good introduction to Markdown and Pandoc is the lesson [Sustainable Authorship in Plain Text using Pandoc and Markdown](https://programminghistorian.org/en/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown).

Any text editor can be used for editing the entries, but since the glossary extensively uses wiki links and bibliographic references, some support from the editor is useful—also to avoid errors.

Personally, I use [Emacs](https://www.gnu.org/software/emacs/) (specifically the [Emacs Mac port](https://bitbucket.org/mituharu/emacs-mac/src/master/)) with [Markdown Mode for Emacs](https://jblevins.org/projects/markdown-mode/) and some custom functions for references and wiki links.  Otherwise Zettlr is  a good option; in particular, see the section “Academic Tools” in the documentation on [citations](https://docs.zettlr.com/en/academic/citations/), [zettelkasten methods](https://docs.zettlr.com/en/academic/zkn-method/) (note that we use the Cosma convention to link to other entries using their ID), and the [graph view](https://docs.zettlr.com/en/academic/graph/).
