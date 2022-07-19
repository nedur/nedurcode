# <NEDUR/code>
# </> R002 - Objetos

# Vetor (Vector)
# Para criar uma vetor no R, use a função c():

x <- c(1, 5, 6)

y <- c("NEDUR", "UFPR", "Regional", "Urbana")


# Matriz (Matrix)
# Para criar uma matriz no R, use a função matrix():

V <- matrix(
  data = 1,
  nrow = 2,
  ncol = 2,
  dimnames = list(c("L1", "L2"), c("C1", "C2"))
)

View(V) # Para ver a matriz criada

M <- matrix(1, ncol = 10, nrow = 10)

M # Para imprimir a matrix no Console


# Lista (List)
# Para criar uma lista no R, use a função list():

A <- list(x, y) # Uma lista com os dois vetores, x e y, criados anteriormente

A # Para imprimir a lista no Console

B <- list(a = c(1, 5, 6),
          b = c("PR", "SP"))

B

View(B)


# Tabela de dados (Data frame)
# Para criar uma data frame no R, use a função data.frame():

D <- data.frame(nome = c("João", "Maria"),
                idade = c(22, 25))

