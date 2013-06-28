(TeX-add-style-hook "dissertation"
 (lambda ()
    (LaTeX-add-bibliographies)
    (LaTeX-add-labels
     "fig:2F43")
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
     "algorithmic"
     "tikz"
     "float"
     "hyperref"
     "amsmath"
     ""
     "latex2e"
     "cornell10"
     "cornell"
     "tocprelim"
     "phd")))

