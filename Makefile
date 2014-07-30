all: test.md


test.md: test.Rmd
	Rscript -e "library(knitr); knit('test.Rmd')"

test.Rmd: data.csv
	touch data.csv