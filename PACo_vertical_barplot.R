Res.Data <- data.frame(read.table("D:/programas/test_cosp/Example/HKYpat.dat", header=TRUE))
#
par(mai=c(1,2,1,1))
pat.bar <- barplot(Res.Data$phi_mean, space = 0.25, col="white", xlim=c(0, max(Res.Data$CI_Hi)), 
            horiz=TRUE,names.arg= Res.Data$Link,las=1, cex.names=0.6 ,mgp = c(3, 0.4, 0))
mtext(side = 2, text = "Host-parasite link", line = 4, cex = 1.2)
mtext(side = 1, text = "Squared Residuals", line = 2, cex = 1.2)
arrows(Res.Data$phi_mean, pat.bar, Res.Data$CI_Hi, pat.bar, length= 0.05, angle=90)
abline(v= median(Res.Data$phi_mean), lty=2)
#
# Play around with mai - internal graph margins, cex.names - size of y-axis labels,
# mgp - Central value controls distance of y-axis labels to axis, in mtext line controls 
# distance of x, y-axis titles to axes. 
