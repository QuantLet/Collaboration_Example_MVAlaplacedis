# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Name of QuantLet : MVAlaplacedis
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Published in : Applied Multivariate Statistical Analysis
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Description : plots three probability density functions 
# (left) and three cumulative density functions (right) 
# of the Laplace-distribution with different scale 
# (L1 stands for Laplace-distribution with scale 1, etc.).
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Keywords : pdf, cdf, multivariate, laplace, scale, plot,
# visualization
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# See also : 
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Author : 
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Submitted : Sun, January 29 2012 by Dedy Dwi Prastyo
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−
# Example : Shows the plots of probability density
# functiona and cumulative density functions of the
# the Laplace-distribution with different scale
# −−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−−

rm(list = ls(all = TRUE))
graphics.off()

install.packages("VGAM")
library(VGAM)

# Laplace Distribution

par(mar = c(6, 5, 5, 5))
par(mfrow = c(1, 2))
xx = seq(-6, 6, by = 0.1)
plot(xx, dlaplace(xx, location = 0, scale = 1), type = "l", ylab = "Y", 
    xlab = "X", col = "black", lwd = 3, cex.lab = 2, cex.axis = 2)
lines(xx, dlaplace(xx, location = 0, scale = 1.5), type = "l", col = "blue", 
    lwd = 3)
lines(xx, dlaplace(xx, location = 0, scale = 2), type = "l", col = "red", 
    lwd = 3)
legend(x = 2, y = 0.4, legend = c("L1", "L1.5", "L2"), pch = c(20, 20), 
    col = c("black", "blue", "red"), bty = "n")
title("PDF of Laplace distribution")

plot(xx, plaplace(xx, location = 0, scale = 1), type = "l", ylab = "Y", 
    xlab = "X", col = "black", lwd = 3, cex.lab = 2, cex.axis = 2)
lines(xx, plaplace(xx, location = 0, scale = 1.5), type = "l", col = "blue", 
    lwd = 3)
lines(xx, plaplace(xx, location = 0, scale = 2), type = "l", col = "red", 
    lwd = 3)
legend(x = 2, y = 0.8, legend = c("L1", "L1.5", "L2"), pch = c(20, 20), 
    col = c("black", "blue", "red"), bty = "n")
title("CDF of Laplace distribution") 
