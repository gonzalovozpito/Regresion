y=c(8,6,13,22,28,33,5,10,6,12,14,9)

sex=factor(c(1,1,1,1,1,1,2,2,2,2,2,2))
est=factor(c(1,1,1,2,2,2,1,1,1,2,2,2))

datos = data.frame(y, sex, est)

m= aov(y~sex*est, data=datos)

anova(m)

source('interIC.R')

interIC(m, 'sex', 'est')

#BLOQUES ALEATORIOS

source("https://raw.githubusercontent.com/javiercara/DisRegETSII/refs/heads/master/R/ICplot.R")

datos <- data.frame( estudiante = c( "Phineas", "Héctor", "Gon", "sara", "Susi", "fernando", "Mireia", "Carmen_", "Paz", "Héctor", "claudia", "Pablo", "Ana", "Javi_Pérez", "NachoP", "Raquel", "Celia", "Marta", "Zijie", "Inés", "Marián", "Iris", "Paulina", "Ronaldinho", "javier", "Lu", "Ines_", "Gabriela", "David", "Fernando", "Fabrizzio", "paula", "Alvaro_", "Marta", "Adrian_", "Sofía_", "Natalia", "pablo", "Asier", "Alvaro", "Alvaro", "Javi_D", "Pablo_g", "Sacris", "Alvaro", "Nacho", "monica", "Loreto", "Ivan", "NBR", "Palomar,_soy_precoz", "Alba_", "Javi_Pere", "Phineas", "Héctor", "Gon", "sara", "Susi", "fernando", "Mireia", "Carmen_", "Paz", "Héctor", "claudia", "Pablo", "Ana", "Javi_Pérez", "NachoP", "Raquel", "Celia", "Marta", "Zijie", "Inés", "Marián", "Iris", "Paulina", "Ronaldinho", "javier", "Lu", "Ines_", "Gabriela", "David", "Fernando", "Fabrizzio", "paula", "Alvaro_", "Marta", "Adrian_", "Sofía_", "Natalia", "pablo", "Asier", "Alvaro", "Alvaro", "Javi_D", "Pablo_g", "Sacris", "Alvaro", "Nacho", "monica", "Loreto", "Ivan", "NBR", "Palomar,_soy_precoz", "Alba_", "Javi_Pere", "Phineas", "Héctor", "Gon", "sara", "Susi", "fernando", "Mireia", "Carmen_", "Paz", "Héctor", "claudia", "Pablo", "Ana", "Javi_Pérez", "NachoP", "Raquel", "Celia", "Marta", "Zijie", "Inés", "Marián", "Iris", "Paulina", "Ronaldinho", "javier", "Lu", "Ines_", "Gabriela", "David", "Fernando", "Fabrizzio", "paula", "Alvaro_", "Marta", "Adrian_", "Sofía_", "Natalia", "pablo", "Asier", "Alvaro", "Alvaro", "Javi_D", "Pablo_g", "Sacris", "Alvaro", "Nacho", "monica", "Loreto", "Ivan", "NBR", "Palomar,_soy_precoz", "Alba_", "Javi_Pere" ), tiempo = c( 28, 50, 50, 50, 50, 39, 49, 47, 48, 51, 46, 35, 49, 49, 41, 52, 47, 43, 44, 41, 43, 49, 40, 50, 48, 44, 42, 46, 40, 46, 44, 40, 40, 49, 50, 40, 45, 46, 34, 46, 47, 44, 48, 47, 47, 44, 45, 41, 33, 80, 100, 44, 50, 4, 34, 37, 26, 31, 33, 24, 30, 31, 38, 26, 39, 35, 41, 29, 34, 35, 37, 40, 23, 33, 25, 35, 39, 28, 29, 28, 23, 33, 30, 32, 22, 31, 31, 32, 35, 32, 28, 19, 28, 31, 41, 29, 36, 40, 40, 32, 32, 30, 30, 100, 32, 30, 50, 45, 44, 38, 45, 43, 41, 38, 40, 43, 43, 41, 43, 46, 39, 45, 38, 43, 38, 41, 43, 41, 44, 45, 40, 40, 39, 35, 36, 41, 38, 38, 42, 40, 44, 44, 39, 38, 37, 40, 44, 39, 40, 41, 42, 36, 45, 38, 40, 30, 100, 42, 47 ), test = rep(paste0("test_", 1:3), each = 53) )


ls()


mod = aov(tiempo ~ test + estudiante, data=datos)

anova(mod)



ICplot(mod, 'test')

ICplot(mod, 'estudiante')

