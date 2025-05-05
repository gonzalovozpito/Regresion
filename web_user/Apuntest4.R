

#REGRESION LINEAL MULTIVARIABLE


data(mtcars)

ls()

datos = mtcars

names(datos)

mod = lm(mpg ~ wt + hp, data = mtcars)

summary(mod)


#     Estimate: estimación de los parámetros
#     Es decir, B0= 37.22, B1=-3.87, B2=-0.031 y [mpg=B0+B1*wt+B2*hp]
#
#     Desviación típica residual: Sr=2.59 "Residual Standart Error"
#
#     Si Pvalor es muy menor que nuestra alfa, afecta significativamente,
#     Mira columna "Pr(>|t|)" 
#     
#     
#     El Coesficneinte de determinación te dice como de bueno es el modelo
#     Se mira en "R-squared:  0.8268"
#
#     El Estadístico F nos dice que al menos un regresor significativo  
#     Se ve en: "69.21 on 2 and 29 DF", el pvalor es 2.29 y nuestro valor es 69.21
#     
#     
#     
#     
#     
#     
#     
#     
#     
#
#
#
#
#



residuals (mod)

#Vemos residuos con esto

#Busquemos el mayor:
max(abs(residuals (mod)))

which.max(abs(residuals (mod)))




#HAGAMOS INTERVALO DE CONFIANZA

confint(mod)

#Vemos cuanto varía mpg en ese intervalo




#Vamos a PREDECIR:


cati = data.frame( wt = 700 , hp= 100 )
predict(mod, cati)
