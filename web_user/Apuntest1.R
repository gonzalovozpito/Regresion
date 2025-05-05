y = c(5,4,6,6,7,   7,5,6,7,6,5,   9,7,8,9,10,11,10)

x = c(1,1,1,1,1,   2,2,2,2,2,2,   3,3,3,3,3,3,3)

x=factor(x)

mod=aov(y~x)
anova(mod)

source('ICplot.R')
ICplot(mod,'x')

pairwise.t.test(y,x, p.adjust.method='none')

