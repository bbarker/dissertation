#!/bin/sh
latex document && bibtex document && latex document && latex supplement \
  && bibtex supplement && latex supplement && latex document && latex supplement\
  && dvipdfm supplement && dvipdfm document
