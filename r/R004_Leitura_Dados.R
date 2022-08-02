# <NEDUR/code>
# </> R004 - Leitura de Dados

# Instalação Pacotes ----

# Se você não instalou os pacotes, use a função install.packages() para 
# instalar cada um dos pacotes abaixo:

install.packages("readr")
install.packages("data.table")
install.packages("readxl")
install.packages("openxlsx")
install.packages("haven")

# Se você já instalou, faça apenas a leitura com a função library()

# Dados ----

# Para testar, use os dados disponíveis nos links abaixo:

# www.nedurcode.com/r/Dados.csv
# www.nedurcode.com/r/Dados.xlsx
# www.nedurcode.com/r/Dados.dta


# readr ----

# Leitura do pacote
library(readr)

# Uso da função read_delim
# read_delim {readr}: Read a delimited file (including CSV and TSV) into a tibble

dados <- read_delim("Dados.csv", delim = ";", col_names = TRUE)


# data.table ----

# Leitura do pacote
library(data.table)

# Uso da função fread
# fread {data.table}: Fast and friendly file finagler

dados <- fread("Dados.csv", sep = "auto", header = "auto", dec = ",")

# readxl ----

# Leitura do pacote
library(readxl)

# Uso da função read_excel
# read_excel {readxl}: Read xls and xlsx files

dados <- read_excel("Dados.xlsx", sheet = "2019", col_names = TRUE)


# opeanxlsx ----

# Leitura do pacote
library(openxlsx)

# Uso da função read.xlsx
# read.xlsx {openxlsx}: Read from an Excel file or Workbook object

dados <- read.xlsx("Dados.xlsx", sheet = "2019", colNames = TRUE)


# haven ----

# Leitura do pacote
library(haven)

# Uso da função read_dta
# read_dta {haven}: Read and write Stata DTA files

dados <- read_dta("dados.dta")
