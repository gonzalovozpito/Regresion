

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
#     Se mira en "R-squared:  0.8268"  (82.68%)
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
#Hay 2 opciones: media o nueva observación
#Media es predicción para muchos individuos
#Nueva observación es para una única observación



#Nueva observación
prediccion = data.frame( wt = 2.52 , hp= 100 )
predict(mod, prediccion, interval = 'prediction') #nueva observación
predict(mod, prediccion, interval = 'confidence') #media


#(Aquí lo he hecho con una regresión múltiple, pero no cae
#sencillamente en vez de 2 variables en el data frame habrá una y ya)

#Media



source('https://raw.githubusercontent.com/gonzalovozpito/Regresion/refs/heads/main/web_user/Apuntest4.R')


cat(readLines("https://raw.githubusercontent.com/gonzalovozpito/Regresion/refs/heads/main/web_user/Apuntest4.R"), sep = "\n")
