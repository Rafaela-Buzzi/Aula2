# API (PORTA/FORMA DE ACESSO REMOTO)
# ACESSAMOS OS DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (WDI)
# INDICADORES DE DESENVOLVIMENTO MUNDIAL

# TAXA

library(WDI) # CARREGAR BIBLIOTECA/PACOTE

options(scipen = 999) # REMOVER A NOT. CIENT.
# DADOS EM PAINEL
dadosTAXA <- WDI(country = 'all',
                indicator = 'FR.INR.RINR')

paises <- c('BR', 'US')

dadosTAXA <- WDI(country = paises,
                    indicator = 'FR.INR.RINR')

# CORTE TRANSVERSAL
dadosTAXA2023 <- WDI(country = 'all',
                    indicator = 'FR.INR.RINR',
                    start = 2023, end = 2023)

# SÉRIE TEMPORAL
dadosTAXABR <- WDI(country = 'BR',
                  indicator = 'FR.INR.RINR')
