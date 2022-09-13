# <NEDUR/code>
# </> R007 - Manipulação de Dados com dplyr

# Instalação e Leitura do Pacote ----

# Se você não instalou o pacote, use a função install.packages() para 
# instalar o pacote dplyr:

install.packages("dplyr")

# Se você já instalou, faça apenas a leitura com a função library():

library(dplyr)

# Dados ----

# Crie a seguinte tabela de dados:

dados <- data.frame(
  REG = c("A", "B", "C", "A", "B", "C"),
  ANO = c(2020, 2020, 2020, 2021, 2021, 2021),
  PIB = c(100, 200, 150, 130, 195, 155),
  POP = c(10, 12, 9, 10.5, 12.3, 9)
)

# Exemplos dplyr ----

# Função mutate()
# A função mutate( ) do pacote dplyr pode ser usada para criar 
# uma nova variável (coluna) na base de dados.

dados <- mutate(.data = dados, PIBpc = PIB / POP)

# Função select()
# A função select( ) do pacote dplyr pode ser usada para selecionar
# variáveis (colunas) de uma base de dados.

dadospc <- select(.data = dados, REG, ANO, PIBpc)

# Função filter()
# A função filter( ) do pacote dplyr pode ser usada para selecionar
# informações da base de dados a partir de um critério.

dados2020 <- filter(.data = dados, ANO == 2020)

# Função summarise()
# A função summarise( ) do pacote dplyr pode ser usada para 
# sumarizar/calcular estatísticas a partir de uma coluna da base de dados.

dados_med <- summarise(.data = dados, MEDIA = mean(PIBpc))

# Função group_by() e summarise()
# As funções group_by() e summarise( ) do pacote dplyr podem ser usadas 
# em conjunto para sumarizar/calcular estatísticas por grupo.

dados_med <- dados |> 
  group_by(REG) |>
  summarise(MEDIA = mean(PIBpc))

# Função arrange()
# A função arrange( ) do pacote dplyr pode ser usada para alterar
# a ordem das linhas da base de dados - o padrão é ordem crescente.

dados <- arrange(.data = dados, PIBpc)

# Para ordem decrescente, use a função desc()

dados <- arrange(.data = dados, desc(PIBpc))
