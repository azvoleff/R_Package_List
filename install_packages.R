pkgs <- read.csv("package_list.csv", header=FALSE)
pkgs <- as.character(pkgs$V1)
install.packages(pkgs, repos="http://cran.revolutionanalytics.com")
source("http://bioconductor.org/biocLite.R")
biocLite("rhdf5")

if (.Platform$OS.type == "unix") {
    download.file("http://www.lepem.ufc.br/jaa/colorout_1.0-1.tar.gz", destfile = "colorout_1.0-1.tar.gz")
    install.packages("colorout_1.0-1.tar.gz", type = "source", repos = NULL)
}

detach("package:vimcom.plus", unload=TRUE)
download.file("http://www.lepem.ufc.br/jaa/vimcom.plus_0.9-92.zip",
              destfile = "vimcom.plus_0.9-92.zip")
install.packages("vimcom.plus_0.9-92.zip", type = "win.binary",
                 repos = NULL)
library(vimcom.plus)
