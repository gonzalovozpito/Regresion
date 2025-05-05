# Leer el archivo TXT (separado por espacios)
datos <- read.table("semillas.txt", header=TRUE)


y= datos$rend

x= datos$sem


x=factor(x)


mod=aov(y~x)
anova(mod)

