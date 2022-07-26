# <NEDUR/code>
# </> R003 - Indexação de Objetos


# Vetores

# Criação do vetor y:
y <- c("NEDUR", "UFPR", "Programação", "NEDURcode", "R")

# Para acessar o primeiro elemento do vetor y:
y[1]

# Para acessar o quarto elemento do vetor y:
y[4]

# Para acessar todos os elementos do vetor y,
# exceto o segundo elemento:
y[-2]

# Criação do vetor v:
v <- c(1, 2, 2, 4, 5)

# Para acessar os elementos do vetor v iguais a 2:
v[v == 2]

# Para acessar os elementos do vetor v menores que 4:
v[v < 4]


# Matrizes

# Criação da matriz C:
C <- matrix(data = seq(1, 10),
            ncol = 2,
            nrow = 5)

# Para imprimir a matriz C no Console:
C

# Para acessar o elemento contido na primeira linha com
# a segunda coluna da matriz C:
C[1, 2]

# Para acessar a segunda linha da matriz C:
C[2, ]

# Para acessar a primeira coluna da matriz C:
C[, 1]

# Para acessar da terceira a quinta linha da matriz C:
C[3:5, ]

# Para acessar da primeira a segunda coluna da matriz C:
C[, 1:2]


# Listas

# Criação da lista B:
B <- list(a = c(1, 5, 6),
          b = c("PR", "SP"))

# Para imprimir a lista B no Console:
B

# Para ver a lista B numa nova janela:
View(B)

# Para acessar o primeiro objeto da lista B:
# Por posição:
B[[1]]

# Por nome:
B[["a"]]

B$a

# Para acessar o terceiro elemento do primeiro objeto da lista B:
B[[1]][3]

# Para acessar do segundo ao terceiro elemento
# do primeiro objeto da lista B:
B[[1]][2:3]

# Para acessar o segundo elemento do segundo objeto da lista B:
B[[2]][2]


# Tabela de dados (Data frame)

# Criação da data frame df:
df <- data.frame(
  nome = c("João", "Maria", "Joaquim"),
  idade = c("20", "25", "40"),
  salario = c("R$1000", "R$2500", "R$3000")
)

# Para imprimir a data frame df no Console:
df

# Para acessar a terceira coluna da data frame df:
# Por posição:
df[, 3]

# Por nome:
df[, "salario"]

df$salario

# Para acessar a segunda linha da data frame df:
df[2,]
