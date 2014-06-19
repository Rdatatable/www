all: parser.Rmd about.Rmd quick-intro.Rmd learn-by-example.Rmd benchmarks.Rmd parser.html about.html quick-intro.html learn-by-example.html benchmarks.html

parser.Rmd: R/00.parser.md
	Rscript -e "\
	source('./scripts/parser.R');\
	parser('R/00.parser.md', 'R/00.parser.Rmd')"

about.Rmd: R/01.about.md
		Rscript -e "\
	source('./scripts/parser.R');\
	parser('R/01.about.md', 'R/01.about.Rmd')"

quick-intro.Rmd: R/02.quick-intro.md
		Rscript -e "\
	source('./scripts/parser.R');\
	parser('R/02.quick-intro.md', 'R/02.quick-intro.Rmd')"

learn-by-example.Rmd: R/04.learn-by-example.md
		Rscript -e "\
	source('./scripts/parser.R');\
	parser('R/04.learn-by-example.md', 'R/04.learn-by-example.Rmd')"

benchmarks.Rmd: R/05.benchmarks.md
		Rscript -e "\
	source('./scripts/parser.R');\
	parser('R/05.benchmarks.md', 'R/05.benchmarks.Rmd')"

parser.html: R/00.parser.Rmd
	pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../internals/index.html ./R/00.parser.Rmd

about.html: R/01.about.Rmd
	pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../about/index.html ./R/01.about.Rmd

quick-intro.html: R/02.quick-intro.Rmd
	pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../intro/index.html ./R/02.quick-intro.Rmd

learn-by-example.html: R/04.learn-by-example.Rmd
	pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../learn-by-example/index.html ./R/04.learn-by-example.Rmd

benchmarks.html: R/05.benchmarks.Rmd
	pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../benchmarks/index.html ./R/05.benchmarks.Rmd

clean:
	rm -f ./R/*.Rmd
