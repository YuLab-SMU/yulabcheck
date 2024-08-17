yulabcheck <- function(path = ".", which = c("devtools", "goodpractice", "extrachecks")) {
    for (pkg in which) {
        cat("\n\n")
        cli::cat_rule("", col = "cyan", line = 2)
        cli::cat_rule(pkg, col = "cyan", line = 1)
        cli::cat_rule("", col = "cyan", line = 2)
        switch(pkg,
            devtools = devtools::check(path),
            goodpractice = goodpractice::goodpractice(path),
            extrachecks = extrachecks::extrachecks(path))
    }

}

