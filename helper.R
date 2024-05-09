library(usethis)

use_gpl3_license()
use_build_ignore(files = "./helper.R")

# use_git()
# use_version()
# use_appveyor()

dta <- data.frame(x = rnorm(n = 100),
                  y = runif(n = 100))

use_data(dta)
dta

use_testthat()
use_test(name = "hello.R")

# roxy name
# imports
# methods
# git

x <- LETTERS

class(x = x)

y <- rnorm(n = 1000)

plot(x = y)

e <- ecdf(x = y)

plot(x = e)

class(x = e)

methods(class = "ecdf")
methods(generic.function = "plot")

x <- hello(x = 1000)

o <- plot(x = x)
o + theme_bw()
?distr

devtools::install_github(repo = "strnda/LOLs")

library(LOLs)

?logo

a <- logo(name = 'KVHEM',
          additional_text = 'Katedra vodního hospodářství
                             a environmentálního modelování')
a + theme(title = element_text(size = 12.5))

x <- logo(name = 'DRUtES',
          additional_text = '\nDual Richards Unsaturated Equation Solver',
          cols = c('royalblue4',
                   'lightsteelblue1'),
          expr = expression(integral()[Omega]),
          text_size = 9.5,
          include_title = FALSE,
          fontface = 'bold.italic')
x + theme(panel.grid.major = element_blank(),
          panel.grid.minor = element_blank(),
          axis.ticks = element_blank(),
          axis.text = element_blank(),
          axis.line = element_line(colour = 'royalblue4'))

secRet()

matRix()



# use_git()
use_github()
gh_token_help()
create_github_token()
gitcreds::gitcreds_set()

use_github()
