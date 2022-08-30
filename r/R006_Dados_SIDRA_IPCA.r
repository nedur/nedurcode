# <NEDUR/code>
# </> R006 - Leitura de Dados do SIDRA (IBGE) - IPCA

# Instalação e Leitura do Pacote ----

# Se você não instalou o pacote, use a função install.packages() para 
# instalar o pacote sidrar:

install.packages("sidrar")

# Se você já instalou, faça apenas a leitura com a função library()

library(sidrar)

# Use a função get_sidra() do pacote

# Exemplo IPCA ----

# Parâmetros:
#
# Tabela (t) 7060 - IPCA - Variação mensal, acumulada no ano,
#                   acumulada em 12 meses e peso mensal, para o índice geral, 
#                   grupos, subgrupos, itens e subitens de produtos e serviços 
#                   (a partir de janeiro/2020)
#
# Nível Territorial (n1) Brasil (all)
# Nível Territorial (n7) Região Metropolitana (all)
#
# Variável (v) 63 - IPCA - Variação mensal (%)
#
# Mês (p) - last%07 - últimos 7 meses
#
# Geral, grupo, subgrupo, item e subitem (c315):
#
#               7169 - Índice geral
#               7170 - 1.Alimentação e bebidas
#               7445 - 2.Habitação
#               7486 - 3.Artigos de residência
#               7558 - 4.Vestuário
#               7625 - 5.Transportes
#               7660 - 6.Saúde e cuidados pessoais
#               7712 - 7.Despesas pessoais
#               7766 - 8.Educação
#               7786 - 9.Comunicação

dIPCA <- get_sidra(api = '/t/7060/n1/all/n7/all/v/63/p/last%207/c315/7169,7170,7445,7486,7558,7625,7660,7712,7766,7786/d/v63%202')

View(dIPCA)


