#!/bin/sh
latex document && bibtex document && latex document && latex supplement \
  && bibtex supplement && latex supplement && latex document && latex supplement\
  && dvipdf supplement && dvipdf document
