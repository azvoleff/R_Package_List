pkgs <- read.csv("package_list.csv", header=FALSE)
pkgs <- as.character(pkgs$V1)
install.packages(pkgs)
