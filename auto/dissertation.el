(TeX-add-style-hook "dissertation"
 (lambda ()
    (LaTeX-add-bibliographies
     "sampleThesis")
    (TeX-add-symbols
     "ifpdf")
    (TeX-run-style-hooks
     "palatino"
     "txfonts"
     "hangcaption"
     "epsfig"
     "subfigure"
     "moreverb"
     "graphics"
     "pstricks"
     "graphicx"
     ""
     "latex2e"
     "cornell10"
     "cornell"
     "tocprelim"
     "phd")))

