# Thesis: Overleaf version (170 x 240 mm)

The thesis in the 170 x 240 mm book format, with the layout adapted to the narrower page
(12.5 cm text width instead of 15.9 cm on A4). It compiles without errors, lines sticking
into the margin, or floats that are too large.

## Compile on Overleaf

1. **New Project → Upload Project**, and choose `istaustriathesis_overleaf.zip`.
2. **Menu → Settings**: set *Compiler* to **pdfLaTeX** and *TeX Live version* to **2024**.
   This version was checked with TeX Live 2024. Newer versions have newer packages, which can
   move line and page breaks slightly.
3. Click **Recompile**.

Overleaf's latexmk runs BibTeX, makeindex and the extra LaTeX passes, following `latexmkrc`.

## Changes compared with the A4 thesis sources

- Title page: set one size smaller, so that it fits on one page.
- Chapters 2 and 3: short titles in the page headers, so that the headers fit on one line.
- Figures: fixed widths (16 cm, 14 cm, …) replaced by the same fraction of the text width.
  The height of a few figures is limited, so that they fit on the page with their captions.
- Captions are set in 10 pt. The long legends of Figures 2.1–2.3 continue in a second float on the next page, labelled
  "Figure 2.x (continued):"; all three figures float, so the text fills the pages before them.
- Pseudocode: all five algorithms use the page-breaking construction from Algorithm 3.1
  (`breakablealgorithm` in `main.tex`), so that long algorithms continue on the next page.
- 32 display equations have extra line breaks; the mathematics is unchanged.
- Two wide tables in Appendix C: two-line column headings, and one table in 10 pt.
- Chapter 2 references the prior in Equation (2.2). They pointed to Equation (3.6) because
  the label `eq:prior` was defined twice.
- Chapter and appendix numbers end at the right edge of the text block instead of hanging in the
  outer margin (the letters A–D reached the trimmed edge).
- `\raggedbottom`: leftover space on a page goes to the bottom instead of stretching the gaps
  between paragraphs and headings.
- `\changed{...}` now prints its text (memoir's own `\changed` printed nothing, which hid four
  sentences in Chapter 3 and the legend of Figure C.8).
- Appendix B.6: the index subscript `i=1,...,M` is written `1:M` (and `1:K+1`), so the
  derivation's equations fit the page; several equations reflowed, small typos fixed.
- Appendix D follows Appendix C without a blank page and fits on one page.
- Table of contents fits on two pages (slightly less space above chapter entries); before, the
  Appendix D entry stood alone on a third page. Figure C.14 no longer takes a page of its own.
- Covers: `graphics/covers/front_…pdf` is the first page and `back_…pdf` the last page (via
  `pdfpages`), each with a blank inside page, so right- and left-hand pages stay as before.
- Bibliography style `alpha-max4.bst`: a copy of `alpha` that lists at most 4 authors per entry,
  then "et al."; adds the period to initials exported without one ("T H E" -> "T. H. E."); prints
  the year without the month (the `.bib` files are unchanged). natbib is loaded with `numbers` to match its labels.
- Bibliography: 8 duplicate entries removed (BibTeX used the first copy anyway), and two
  consortium names in `allofus` put in braces, so that they are printed correctly.

`latexmkrc` builds the List of Terms and the List of Abbreviations with the same makeindex
calls as `build-thesis.sh`, and runs the intermediate LaTeX passes without embedding the
figures (a clean build takes about 60 s instead of 200 s; the PDF is the same).

## Good to know

- **Compile time**: about 60 s for the first compile and 40–50 s after an edit, measured on an
  Apple M3; Overleaf's servers may be slower. This needs a paid or institutional Overleaf plan
  (240 s limit). The free plan's limit (10 s) is too short.
- **Remaining log messages**, all harmless: glossaries notes that it overrides memoir's glossary
  commands, `output.xmpdata` is (re)written for the PDF/A metadata, and BibTeX notes that
  `Wu2024` and `Muller2004` have no authors and `bromiley_products_2013` has no booktitle.
- **Local compile**: `latexmk -pdf main.tex`
