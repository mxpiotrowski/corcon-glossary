---
title: README
id: 20221219233000
---

# corcon-glossary

Glossary for the Corpora and Concepts project

Set up for use with [Cosma](https://cosma.graphlab.fr/en/) ([manual](https://cosma.graphlab.fr/en/docs/user-manual/)) or [Zettlr](https://www.zettlr.com) ([manual](https://docs.zettlr.com/en/)).

If you have the CLI version of Cosma installed ([User Manual (CLI)](https://cosma.graphlab.fr/en/docs/cli/user-manual/)), you can use the `cosmoscope.html` target of the makefile to generate a stand-alone cosmoscope.

## Bibliography

The bibliography used by the glossary entries is in `bib/references.bib`.  If you cite additional sources, please remember to add them to this file.

Cosma needs a bibliography in CSL-JSON format; it can be generated using the makefile by saying `make references.json`.

## Tools

A good introduction to Markdown and Pandoc is the lesson [Sustainable Authorship in Plain Text using Pandoc and Markdown](https://programminghistorian.org/en/lessons/sustainable-authorship-in-plain-text-using-pandoc-and-markdown).

Any text editor can be used for editing the entries, but since the glossary extensively uses wiki links and bibliographic references, some support from the editor is useful—also to avoid errors.

Personally, I use [Emacs](https://www.gnu.org/software/emacs/) (specifically the [Emacs Mac port](https://bitbucket.org/mituharu/emacs-mac/src/master/)) with [Markdown Mode for Emacs](https://jblevins.org/projects/markdown-mode/) and some custom functions for references and wiki links.  Otherwise Zettlr is  a good option; in particular, see the section “Academic Tools” in the documentation on [citations](https://docs.zettlr.com/en/academic/citations/), [zettelkasten methods](https://docs.zettlr.com/en/academic/zkn-method/) (note that we use the Cosma convention to link to other entries using their ID), and the [graph view](https://docs.zettlr.com/en/academic/graph/).

## Guidelines

For citations, please use the [Pandoc citation syntax](https://pandoc.org/MANUAL.html#citation-syntax).
     
Not only can it be processed by Pandoc, but also by Cosma and Zettlr.  Markdown editors like Zettlr provide autocompletion: when you type @ it will offer you the possible completions from the bibliography.  For this to work, the tool must know which bibliography database to use.  For Zettlr, go to Preferences → Citations and set it there.  Zettlr can directly use the database in BibTeX format, so you don’t have to regenerate the JSON version. Whatever tool you use, using the respective facility for automatically inserting citations saves work and avoids errors!  Don’t do it manually!

The rendering of citations depends on the CSL style used, so what it looks like can be changed—but this will only work when the citation syntax is correctly and consistently used!  The basic distinction to make is:

- parenthetical citation: `[@Berry2011]` → will be rendered in a way suitable, e.g., after a quotations, so in an author–date style, typically this will be something like (Berry 2011).

  Thus: don’t add any parentheses, and also don’t use other types of parentheses either.  Variants like `([@Berry2011])` or `(@Berry2011)` won’t render correctly (or not at all).  Also, make sure that there’s a space before the opening bracket.

- in-text citation: `@Berry2011` → will be rendered in a suitable, e.g., as a subject in a sentence, so in an author–date style, typically this will be something like Berry (2011).

For block quotes, please:

- don’t include quotation marks
- at the end of the quotation, use two spaces, return, `—` [em dash] (or `---` [three dashes]), then the attribution in the form of an in-text citation.

Other formats are in principle possible, but this ensures consistency,
and this format is supported by [Deckset](https://www.deckset.com/).

For block quotes in a language different from that of the text, please
add the language attribute on the following line, e.g.:

```
> Quant à l’intentionalité scientifique, à la visée, nous l’avons déjà
> définie comme construction de *modèles cohérents et efficaces du
> phénomène*.  
—@Granger1967 [215]
{lang=fr}
```

⚠ There is a slight problem, because Pandoc doesn’t support the combination of this type of attributes with citations, and Cosma currently doesn’t support fenced divs like

```
::: {lang=fr}
…
:::
```

but at least this ensures that the information is recorded consistently and can thus be acted upon later on (e.g., transformed into a different format).

Not strictly citations, but related: a cross reference to another entry (wiki link) should come *before* the term or the words that describe it.  So:

❌ `history [[20220415237900]]`

✔ `[[20220415237900]] history`

One reason is consistency, the other is that this is what Zettlr does when you use autocompletion (initiated by typing `[[`).  (And I do something similar in Emacs).

Also, there is no need for linking to the entry in the entry itself.  Suppose you write the entry for “understanding”:

❌ `The term [[20220616094641]] *understanding* means…`

✔ `The term *understanding* means…`

The only exception might be the entry for “recursion” ;-)
