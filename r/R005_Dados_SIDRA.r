# <NEDUR/code>
# </> R005 - Leitura de Dados do SIDRA (IBGE)

# Instalação e Leitura do Pacote ----

# Se você não instalou o pacote, use a função install.packages() para 
# instalar o pacote sidrar:

install.packages("sidrar")

# Se você já instalou, faça apenas a leitura com a função library()

library(sidrar)

# Use a função get_sidra() do pacote

# Exemplo PIB ----

# Tabela (t) 6784 - Produto Interno Bruto, Produto Interno Bruto per capita, 
#                   População residente e Deflator
# Nível Territorial (n1) Brasil (1)
# Variável (v) 9808 -  PIB - valores correntes (Milhões de Reais)
# Ano (p) - 2017, 2018, 2019

PIB <- get_sidra(api = '/t/6784/n1/1/v/9808/p/2017,2018,2019')

View(PIB)


