# For info on Travis R scripts, see
# http://jtleek.com/protocols/travis_bioc_devel/

# Roxygen tips:
# http://r-pkgs.had.co.nz/man.html

/usr/local/bin/R CMD BATCH document.R
/usr/local/bin/R CMD build ../../ --no-build-vignettes #--no-tests
#/usr/local/bin/R CMD check --as-cran bibliographica_0.1.22.tar.gz
/usr/local/bin/R CMD check bibliographica_0.1.35.tar.gz --no-build-vignettes #--no-tests
/usr/local/bin/R CMD INSTALL bibliographica_0.1.35.tar.gz

