((markdown-mode . ((bibtex-completion-bibliography . "bib/references.bib")
                   (time-stamp-format . "%:y-%02m-%02dT%02H:%02M:%02S%5z %u")
                   (eval . (add-hook 'before-save-hook 'time-stamp nil t)))))
