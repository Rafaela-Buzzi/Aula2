# API (PORTA/FORMA DE ACESSO REMOTO)
# ACESSAMOS OS DADOS DO BANCO MUNDIAL (WORLD BANK)
# WORLD DEVELOPMENT INDICATORS (WDI)
# INDICADORES DE DESENVOLVIMENTO MUNDIAL

# PIB (PRODUTO INTERNO BRUTO)

library(WDI) # CARREGAR BIBLIOTECA/PACOTE

options(scipen = 999) # REMOVER A NOT. CIENT.
# DADOS EM PAINEL
dadospib <- WDI(country = 'all',
                indicator = 'FR.INR.RINR')

paises <- c('BR', 'US')

dadospibbrus <- WDI(country = paises,
                    indicator = 'FR.INR.RINR')

# CORTE TRANSVERSAL
dadospib2023 <- WDI(country = 'all',
                    indicator = 'FR.INR.RINR',
                    start = 2023, end = 2023)

# SÉRIE TEMPORAL
dadospibbr <- WDI(country = 'BR',
                  indicator = 'FR.INR.RINR')