pkgs <- read.csv("package_list.csv")
pkgs <- pgks$Package_Name
install.packages(pkgs)
