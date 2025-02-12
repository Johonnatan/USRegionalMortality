#Limpar variáveis
rm(list=ls(all=TRUE))

#Instalar pacotes
install.packages("caret", dependencies = TRUE)

#Carregar biblioteca CARET
library(caret)

#Criar dataframe
dados <- USRegionalMortality

#Análise exploratória
summary(dados)
View(dados)

#Criar histograma de frequência
hist(dados$Rate, 
     main = "Ranking de Mortes nos USA entre 2010 a 2014", 
     xlab = "Frequência", 
     ylab = "Mortes a cada 100 mil habitantes",
     labels = FALSE)
grid()

#Encontrar os maiores casos
plot(dados$Cause, dados$Rate)
dotplot(dados$Rate)

#Encontrar quem morre mais
plot(dados$Sex, dados$Rate)
