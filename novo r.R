# API (PORTA/FORMA DE ACESSO REMOTO)
# ACESSAMOS OS DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (WDI)
# INDICADORES DE DESENVOLVIMENTO MUNDIAL

# PIB (PRODUTO INTERNO BRUTO)

library(WDI) # CARREGAR BIBLIOTECA/PACOTE

options(scipen = 999) # REMOVER A NOT. CIENT.
# DADOS EM PAINEL
dadostaxa <- WDI(country = 'all',
                indicator =  'FR.INR.RINR')

paises <- c('BR', 'US')

dadostaxabrus <- WDI(country = paises,
                    indicator =  'FR.INR.RINR')

# CORTE TRANSVERSAL
dadostaxa2023 <- WDI(country = 'all',
                    indicator =  'FR.INR.RINR',
                    start = 2023, end = 2023)

# SÉRIE TEMPORAL
dadostaxabr <- WDI(country = 'BR',
                 indicator =  'FR.INR.RINR')

# GRÁFICOS
# BIBLIOTECA ggplot2 (tidyverse)
# install.packages ("tidyverse")
library(tidyverse)

## DADOS EM PAINEL

grafpainel <- ggplot(dadostaxa,
                     mapping = aes(y = FR.INR.RINR,
                                   x = year))+
  geom_point()

print(grafpainel)

# CORTE TRANSVERSAL

grafcorte <- ggplot(dadostaxa2023, 
                    mapping = aes(y = FR.INR.RINR,
                                  x = year))+
  geom_point()

print(grafcorte)

# SÉRIE TEMPORAL

grafserie <- ggplot (dadostaxabr,
                     mapping = aes(y = FR.INR.RINR,
                                   x = year))+
  geom_line()

print(grafserie)