
# Regressão Linear Múltipla ------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco -----------------------------------------------------------------------------------------------
# Data do script: 10/05/22 -------------------------------------------------------------------------------------------------------
# Referência: Curso Udemy --------------------------------------------------------------------------------------------------------

# Carregar pacote --------------------------------------------------------------------------------------------------------------------------

library(car)

# Regressão Linear Múltipla ----------------------------------------------------------------------------------------------------------------

### Regressão linear é uma equação para se estimar a condicional (valor esperado) de
### uma variável y dado os valores de outras variáveis x.

### y = a + bx + b1x! + b2x2 + b3x3...

# Carregar dados ---------------------------------------------------------------------------------------------------------------------------

data(iris)
head(iris)

# Modelos de Regressão Linear Múltipla -----------------------------------------------------------------------------------------------------

fit1 <- lm(Sepal.Length ~ Sepal.Width + Petal.Width, data = iris)

### vif = variation inflation factor/ fator de inflação da variância

vif(fit1) # vif com valores < 5 são aceitáveis para o modelo

summary(fit1)

fit2 <- lm(Sepal.Length ~ Sepal.Width + Petal.Length + Petal.Width, data = iris)

vif(fit2) # Problemático, valores foram > 10

summary(fit2)

fit3 <- lm(Sepal.Length ~ Sepal.Width * Petal.Length, data = iris)

vif(fit3) # Problemático, valores muito altos

summary(fit3)

# Outras funções ---------------------------------------------------------------------------------------------------------------------------

coefficients(fit1) # Coeficientes
confint(fit1, level = 0.95) # Intervalos de confiança
fitted(fit1) # Valores previstos
residuals(fit1) # Residuais
anova(fit1) # Tabela ANOVA
vcov(fit1) # Matriz de covariância
  
