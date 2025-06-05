slides:
	make slides.html
	# cp slides.html docs/index.html
	# cp -r slides_files docs/.
	# cp -r figs docs/.
	# cp *css docs/.

%.html: %.Rmd
	Rscript -e "rmarkdown::pandoc_available()"
	Rscript -e "rmarkdown::render('$^', output_format = 'xaringan::moon_reader')"

clean:
	rm *.html xaringan-themer.css
	rm -r *_files