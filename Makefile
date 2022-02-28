bs4:
	rm -rf docs/libs;\
	#rm -rf docs/index_files/figure-html;\
	Rscript -e 'library(bookdown); render_book("index.Rmd", "bs4_book")'

gitbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "gitbook")'

pdfbook:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "pdf_book")'

epub:
	Rscript -e 'library(bookdown); render_book("index.Rmd", "epub_book")'

clean:
	Rscript -e 'bookdown::clean_book()';\
	rm -rf _bookdown_files

cover:
	Rscript -e 'source("book-cover.R")'

publish:
	cd docs;\
	git add .;\
	git commit -m 'update';\
	git push -u origin docs
	