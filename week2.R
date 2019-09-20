# Phan phoi nhi thuc
# ham mat do : dbinom(k,n,p)
dbinom(5,12,0.4)
# ham tich luy: pbinom(k,n,p)
pbinom(5,12,0.4)
# ham dinh bac: qbinom(p',n,p)
qbinom(0.6,12,0.3)
# ham mo phong: rbinom(so luong mau,n,p)
# trong 20 nguoi co 0.2 nguoi mac benh lay 100 mau nhu the
b=rbinom(100,20,0.2)
b
# lap bang tan so
table(b)
# To chuc do: hist()
hist(b)
hist(b,
     xlab = "So luong benh nhanh",
     ylab = "So luong mau",
     main = "Su phan phoi so luong benh nhan")
# Phan phoi poisson
# Ham mat do : dpois(k, lambda)
dpois(3,2)
# ham tich luy: ppois(k, lambda)
ppois(3,2)
# ham dinh bac: qpois(p, lambda)
qpois(0.67,2)
# ham mo phong: rpois(so luong mau, lambda)
p=rpois(100,3)
p
table(p)
hist(p)
#Ham phan phoi chuan
#Ham mat do: dnorm(x,mean,sd)
dnorm(168,156,4.6)
#Ham tich luy: pnorm(x, mean,sd)
pnorm(160,156,4.6)
# ham dinh bac: qnorm(p, mean, sd)
qnorm(0.4,156,4.6)
chieucao=seq(130,200,1)
chieucao
plot(chieucao, dnorm(chieucao,156,4.6),
     type = "l",
     xlab = "chieu cao",
     ylab = "xac suat",
     main = "pp xs cua chieu cao")
# phan phoi chi binh phuong
# ham mat do: dchisq(x=u,df=k)
dchisq(21,13)
# ham tich luy: pchisq(u,k)
pchisq(21,13)
# ham dinh bac: qchisq(p,k)
qchisq(0.01,13)
# ham mo phong: rchisq(so luong mau, k)
r=rchisq(100,13)
r
curve(dchisq(x,1),xlim = c(0,10), ylim = c(0,0.06),lwd=3)
curve(dchisq(x,2), add = T, col = "green", lwd=3)
curve(dchisq(x,3), add = T, col = "red", lwd=3)
curve(dchisq(x,10), add = T, col = "blue", lwd=3)
curve(dchisq(x,5), add = T, col = "yellow", lwd=3)
abline(h=0,lty=3)
abline(v=0,lty=3)
# ghi chu
legend(par("usr")[2],par("usr")[4],
       xjust = 1,
       c("df = 1", "df = 2", "df = 3", "df = 5"),
       col=c("green","red","blue","yellow"),
       lwd=3,lty = 1)
# phan phoi student
# ham mat do: dt(x,df)
dt(1,6)
# ham tich luy: pt(x,df)
pt(1,6)
# ham dinh luong: qt(p,df)
qt(0.3,6)
# mo phong
curve(dt(x,1), xlim = c(-3,3), ylim = c(0,0.4), col="red",lwd=3)
curve(dt(x,2), add = T, col="blue",lwd=3)
curve(dt(x,5), add = T, col="green",lwd=3)
curve(dt(x,10), add = T, col="orange",lwd=3)
curve(dnorm(x),add = T, col="yellow",lwd=4,lty=3)
title(main = "Phan phoi student")
legend(par("usr")[2], par("usr")[4],
       xjust = 1,
       c["df=1","df=2","df=5","df=10","Phan phoi chuan"],
       lwd=c(2,2,2,2,2),
       lty=c(1,1,1,1,3),
       col=c["red","blue","green","organge","yellow"])
       
       