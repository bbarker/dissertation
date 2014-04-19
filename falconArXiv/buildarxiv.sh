#!/bin/sh
latex arxiv_doc && bibtex arxiv_doc && latex arxiv_doc \
   && latex arxiv_doc && dvipdf arxiv_doc
