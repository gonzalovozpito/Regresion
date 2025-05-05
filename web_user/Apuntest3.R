datos=cars
head(datos)

ls()

names(datos) #o usamos head(datos)
head(datos)


mod = lm(dist ~ speed, data=datos)

summary(mod)  #Itercept es B0 (17.5791) y speed es B1 (3.9324     )


#Error nos da SBo y SB1 (6.7584) (0.4155   )
#Multiple R-squared es el Rcuadrado (0.6511)
#La SR es Residual standard error (15.38)



