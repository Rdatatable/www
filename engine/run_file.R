in_file  = "~/Dropbox/Public/github/Rdatatable/www/engine/R/01.about.md"
out_file = "~/Dropbox/Public/github/Rdatatable/www/engine/R/01.about.Rmd"
source("~/Dropbox/Public/github/Rdatatable/www/engine/scripts/parser.R")
parser(in_file, out_file)


in_file  = "~/Dropbox/Public/github/Rdatatable/www/engine/R/00.parser.md"
out_file = "~/Dropbox/Public/github/Rdatatable/www/engine/R/00.parser.Rmd"
source("~/Dropbox/Public/github/Rdatatable/www/engine/scripts/parser.R")
parser(in_file, out_file)


in_file  = "~/Dropbox/Public/github/Rdatatable/www/engine/R/02.quick-intro.md"
out_file = "~/Dropbox/Public/github/Rdatatable/www/engine/R/02.quick-intro.Rmd"
source("~/Dropbox/Public/github/Rdatatable/www/engine/scripts/parser.R")
parser(in_file, out_file)

in_file  = "~/Dropbox/Public/github/Rdatatable/www/engine/R/04.learn-by-example.md"
out_file = "~/Dropbox/Public/github/Rdatatable/www/engine/R/04.learn-by-example.Rmd"
source("~/Dropbox/Public/github/Rdatatable/www/engine/scripts/parser.R")
parser(in_file, out_file)

cd /Users/dragonfly/Dropbox/Public/github/Rdatatable/www/engine
pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../about/index.html R/01.about.Rmd
pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../internals/index.html R/00.parser.Rmd
pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../intro/index.html R/02.quick-intro.Rmd
pandoc --smart --standalone -c ../css/bootstrap.css --from markdown --to html -o ../learn-by-example/index.html R/04.learn-by-example.Rmd
