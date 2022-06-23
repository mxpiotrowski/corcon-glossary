-- @pandoc_tips (Jan 14, 2022)

-- Do you maintain one big BibTeX database? Create a small one for your article with
--   pandoc -L getbib.lua http://paper.md -o paper.bib
-- where getbib.lua contains

function Pandoc(d)
  d.meta.references = pandoc.utils.references(d)
  d.meta.bibliography = nil
  return d
end
