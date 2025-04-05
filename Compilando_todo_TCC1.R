#Instalando e importando pacotes ####
install.packages(c("ggplot2","ggpattern","ggpubr","psych", "gganimate", "scales", "janitor", "tidyverse", "ggplot2", 
                   "ggthemes", "dplyr", "gridExtra", "dlookr", "prettydoc", 
                   "dataMaid", "rcompanion", "data.table"))
if (!require(writexl)) {
  install.packages("writexl")
}
library(writexl)
# library
if (!require(ggridges)) {
  install.packages("ggridges")
}
if (!require(forcats)) {
  install.packages("forcats")
}
library(ggridges)
library(ggplot2)
library(dplyr)
library(tidyr)
library(forcats)

library(psych)
library(gganimate)
library(scales)
library(janitor)
library(tidyverse)
library(ggplot2)
library(ggthemes)
library(scales)
library(dplyr)
library(gridExtra)
library(dlookr)
library(prettydoc)
library(dataMaid)
library(rcompanion)
library(data.table)
library(ggpattern)
library(readxl)


#Scrip usado para converter os arquivos de csv para .RDATA####

setwd("C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados")

if(!require(pacman)) install.packeges("pacman")
pacman::p_load(dplyr, readr, stringi)
install.packages('stringr')

#https://www.youtube.com/watch?v=ru4WT9k1wx4

#Carregando bibliotecas
library(psych)
library(tidyverse)
library(ggplot2)
library(ggthemes)
library(scales)
library(dplyr)
library (data.table)
library (stringr)
library (tidytext)
library (readr)
library (stringi)


#importando banco de dados
#para importar temos que colocar ,fileEncoding = "latin1"
#usando o readr - date_2014_2 <- readr::read_csv2("C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/EDA_Industrializados_201402.csv",locale =readr::locale(encoding="latin1"))

#date_2014_1 <- read.csv2("C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/EDA_Industrializados_201401.csv",fileEncoding = "latin1")
#date_2014_1 <- readr::read_csv2("C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/EDA_Industrializados_201401.csv",locale =readr::locale(encoding="latin1"))
#save(date_2014_1, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/date_2014_1.RData')

#date_2014_2 <- readr::read_csv2("C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/EDA_Industrializados_201402.csv",locale =readr::locale(encoding="latin1"))
#save(date_2014_2, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/date_2014_2.RData')

#date_2014_3 <- readr::read_csv2("C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/EDA_Industrializados_201403.csv",locale =readr::locale(encoding="latin1"))
save(date_2014_3, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/date_2014_3.RData')

# Definindo o caminho do diretório
caminho <- "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/"

# Loop para ler os arquivos CSV e salvar os objetos RData
for (mes in 1:12) {
  # Formate o número do mês com dois dígitos
  mes_formatado <- sprintf("%02d", mes)
  
  # Caminho completo para o arquivo CSV
  caminho_csv <- paste0(caminho, "EDA_Industrializados_2014", mes_formatado, ".csv")
  
  # Nome do objeto
  nome_objeto <- paste0("date_2014_", mes)
  
  # Leitura do arquivo CSV
  assign(nome_objeto, readr::read_csv2(caminho_csv, locale = readr::locale(encoding = "latin1")))
  
  # Salvando o objeto RData
  save(list = nome_objeto, file = paste0(caminho, "date_2014_", mes, ".RData"))
}


# Loop para ler os arquivos CSV e salvar os objetos RData
for (mes in 1:12) {
  # Formate o número do mês com dois dígitos
  mes_formatado <- sprintf("%02d", mes)
  
  # Caminho completo para o arquivo CSV
  caminho_csv <- paste0(caminho, "EDA_Industrializados_2015", mes_formatado, ".csv")
  
  # Nome do objeto
  nome_objeto <- paste0("date_2015_", mes)
  
  # Leitura do arquivo CSV
  assign(nome_objeto, readr::read_csv2(caminho_csv, locale = readr::locale(encoding = "latin1")))
  
  # Salvando o objeto RData
  save(list = nome_objeto, file = paste0(caminho, "date_2015_", mes, ".RData"))
}

# Loop para ler os arquivos CSV e salvar os objetos RData
for (mes in 1:12) {
  # Formate o número do mês com dois dígitos
  mes_formatado <- sprintf("%02d", mes)
  
  # Caminho completo para o arquivo CSV
  caminho_csv <- paste0(caminho, "EDA_Industrializados_2016", mes_formatado, ".csv")
  
  # Nome do objeto
  nome_objeto <- paste0("date_2016_", mes)
  
  # Leitura do arquivo CSV
  assign(nome_objeto, readr::read_csv2(caminho_csv, locale = readr::locale(encoding = "latin1")))
  
  # Salvando o objeto RData
  save(list = nome_objeto, file = paste0(caminho, "date_2016_", mes, ".RData"))
}

# Loop para ler os arquivos CSV e salvar os objetos RData
for (mes in 1:12) {
  # Formate o número do mês com dois dígitos
  mes_formatado <- sprintf("%02d", mes)
  
  # Caminho completo para o arquivo CSV
  caminho_csv <- paste0(caminho, "EDA_Industrializados_2017", mes_formatado, ".csv")
  
  # Nome do objeto
  nome_objeto <- paste0("date_2017_", mes)
  
  # Leitura do arquivo CSV
  assign(nome_objeto, readr::read_csv2(caminho_csv, locale = readr::locale(encoding = "latin1")))
  
  # Salvando o objeto RData
  save(list = nome_objeto, file = paste0(caminho, "date_2017_", mes, ".RData"))
}

# Loop para ler os arquivos CSV e salvar os objetos RData
for (mes in 1:12) {
  # Formate o número do mês com dois dígitos
  mes_formatado <- sprintf("%02d", mes)
  
  # Caminho completo para o arquivo CSV
  caminho_csv <- paste0(caminho, "EDA_Industrializados_2018", mes_formatado, ".csv")
  
  # Nome do objeto
  nome_objeto <- paste0("date_2018_", mes)
  
  # Leitura do arquivo CSV
  assign(nome_objeto, readr::read_csv2(caminho_csv, locale = readr::locale(encoding = "latin1")))
  
  # Salvando o objeto RData
  save(list = nome_objeto, file = paste0(caminho, "date_2018_", mes, ".RData"))
}

# Loop para ler os arquivos CSV e salvar os objetos RData
for (mes in 1:12) {
  # Formate o número do mês com dois dígitos
  mes_formatado <- sprintf("%02d", mes)
  
  # Caminho completo para o arquivo CSV
  caminho_csv <- paste0(caminho, "EDA_Industrializados_2019", mes_formatado, ".csv")
  
  # Nome do objeto
  nome_objeto <- paste0("date_2019_", mes)
  
  # Leitura do arquivo CSV
  assign(nome_objeto, readr::read_csv2(caminho_csv, locale = readr::locale(encoding = "latin1")))
  
  # Salvando o objeto RData
  save(list = nome_objeto, file = paste0(caminho, "date_2019_", mes, ".RData"))
}

# Loop para ler os arquivos CSV e salvar os objetos RData
for (mes in 1:12) {
  # Formate o número do mês com dois dígitos
  mes_formatado <- sprintf("%02d", mes)
  
  # Caminho completo para o arquivo CSV
  caminho_csv <- paste0(caminho, "EDA_Industrializados_2020", mes_formatado, ".csv")
  
  # Nome do objeto
  nome_objeto <- paste0("date_2020_", mes)
  
  # Leitura do arquivo CSV
  assign(nome_objeto, readr::read_csv2(caminho_csv, locale = readr::locale(encoding = "latin1")))
  
  # Salvando o objeto RData
  save(list = nome_objeto, file = paste0(caminho, "date_2020_", mes, ".RData"))
}


# Diretório onde os arquivos estão localizados
diretorio <- "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/"


# Verificar se o diretório existe
if (!file.exists(diretorio)) {
  stop("O diretório especificado não existe.")
}

# Listar todos os arquivos .RDATA no diretório
arquivos <- list.files(diretorio, pattern = "\\.RDATA$", full.names = TRUE)

# Verificar se há arquivos .RDATA no diretório
if (length(arquivos) == 0) {
  stop("Nenhum arquivo .RDATA encontrado no diretório especificado.")
}


#filtrndo por municipios com mais vendas

View ((tabela_combinada1 %>% group_by(MUNICIPIO_VENDA) %>% tally()) %>% 
        arrange(desc(n)))

Capitais <- date_2014_1 %>% filter(MUNICIPIO_VENDA == c('BELO HORIZONTE','SÃO PAULO','RIO DE JANEIRO','CURITIBA','GOIÂNIA','FORTALEZA','SALVADOR','PORTO ALEGRE','BRASÍLIA','BELÉM','RECIFE','NATAL','MACEIÓ','RIO BRANCO','VITÓRIA','CUIABÁ','SÃO LUÍS','CAMPO GRANDE','JOÃO PESSOA','TERESINA','PORTO VELHO','BOA VISTA','	
FLORIANÓPOLIS','ARACAJU','PALMAS','MACAPÁ','MANAUS'))

View ((Capitais %>% group_by(MUNICIPIO_VENDA) %>% tally()) %>% 
        arrange(desc(n)))


#código usado para filtrar as apitais####

# Lista de capitais
capitais <- c('RIO BRANCO', 'MACEIÓ', 'MACAPÁ', 'MANAUS', 'SALVADOR', 'FORTALEZA', 'BRASÍLIA', 'VITÓRIA','GOIÂNIA','SÃO LUÍS','CUIABÁ','CAMPO GRANDE','BELO HORIZONTE','BELÉM','JOÃO PESSOA','CURITIBA','RECIFE','TERESINA','RIO DE JANEIRO','NATAL','PORTO ALEGRE','PORTO VELHO','BOA VISTA','FLORIANÓPOLIS','SÃO PAULO','ARACAJU','PALMAS')

# Defina o padrão de nome dos arquivos
padrao_nome <- "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/date_%d_%d.RDATA"

# Loop sobre anos e meses para carregar os dados
for (ano in 2014:2020) {
  for (mes in 1:12) {
    
    # Construa o nome do arquivo de acordo com o padrão
    nome_arquivo <- sprintf(padrao_nome, ano, mes)
    
    # Carregue os dados usando rio::import
    load(nome_arquivo)
    
    nome_dados_filtrados <- get(paste0("date_", ano, "_", mes)) %>%
      filter(MUNICIPIO_VENDA %in% capitais)
    
    assign(paste0("capitais_", ano, "_", mes), nome_dados_filtrados, envir = .GlobalEnv)
    
    # Salvar o arquivo filtrado
    save(list = paste0("capitais_", ano, "_", mes), file = paste0("C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_", ano, "_", mes, ".RDATA"))
    
    
    # Remover os dados da memória
    rm(list = paste0("date_", ano, "_", mes))
    rm(list = paste0("capitais_", ano, "_", mes))
  }
}


# Lista de caminhos dos arquivos .rdata
lista_arquivos <- c('C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_1.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_2.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_3.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_4.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_5.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_6.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_7.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_8.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_9.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_10.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_11.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2014_12.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_1.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_2.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_3.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_4.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_5.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_6.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_7.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_8.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_9.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_10.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_11.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2015_12.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_1.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_2.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_3.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_4.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_5.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_6.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_7.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_8.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_9.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_10.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_11.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2016_12.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_1.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_2.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_3.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_4.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_5.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_6.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_7.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_8.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_9.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_10.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_11.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2017_12.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_1.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_2.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_3.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_4.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_5.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_6.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_7.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_8.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_9.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_10.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_11.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2018_12.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_1.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_2.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_3.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_4.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_5.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_6.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_7.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_8.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_9.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_10.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_11.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2019_12.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_1.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_2.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_3.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_4.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_5.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_6.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_7.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_8.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_9.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_10.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_11.RDATA','C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2020_12.RDATA'
)
# Carregando e combinando os arquivos .rdata
dados_combinados <- data.frame()

for (arquivo in lista_arquivos) {
  load(arquivo)  # Carrega o arquivo .rdata
  dados <- get(ls())  # Obtém o objeto (data frame) do ambiente
  dados_combinados <- rbind(dados_combinados, dados)
}

# Salve o arquivo combinado em .rdata
save(dados_combinados, file = "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais1.RDATA")


#Código usado para combinaar os dados ######
# Defina o padrão de nome dos arquivos
padrao_nome <- "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_%d_%d.RDATA"



for (ano in 2014:2019) {
  for (mes in 1:12) {
    
    # Construa o nome do arquivo de acordo com o padrão
    nome_arquivo <- sprintf(padrao_nome, ano, mes)
    # Carregue os dados usando rio::import
    load(nome_arquivo)  
    
  }
}

# Suponha que você tenha uma lista de tabelas
lista_de_tabelas <- list(capitais_2015_1,capitais_2015_2,capitais_2015_3,capitais_2015_4,capitais_2015_5,capitais_2015_6,capitais_2015_7,capitais_2015_8,capitais_2015_9,capitais_2015_10,capitais_2015_11,capitais_2015_12,capitais_2016_1,capitais_2016_2,capitais_2016_3,capitais_2016_4,capitais_2016_5,capitais_2016_6,capitais_2016_7,capitais_2016_8,capitais_2016_9,capitais_2016_10,capitais_2016_11,capitais_2016_12,capitais_2017_1,capitais_2017_2,capitais_2017_3,capitais_2017_4,capitais_2017_5,capitais_2017_6,capitais_2017_7,capitais_2017_8,capitais_2017_9,capitais_2017_10,capitais_2017_11,capitais_2017_12,capitais_2018_1,capitais_2018_2,capitais_2018_3,capitais_2018_4,capitais_2018_5,capitais_2018_6,capitais_2018_7,capitais_2018_8,capitais_2018_9,capitais_2018_10,capitais_2018_11,capitais_2018_12,capitais_2019_1,capitais_2019_2,capitais_2019_3,capitais_2019_4,capitais_2019_5,capitais_2019_6,capitais_2019_7,capitais_2019_8,capitais_2019_9,capitais_2019_10,capitais_2019_11,capitais_2019_12,capitais_2014_1,capitais_2014_2,capitais_2014_3,capitais_2014_4,capitais_2014_5,capitais_2014_6,capitais_2014_7,capitais_2014_8,capitais_2014_9,capitais_2014_10,capitais_2014_11,capitais_2014_12)

# Nome da coluna que deseja excluir
nome_da_coluna_a_excluir <- "UNIDADE_IDADE"

# Função para remover a coluna de uma tabela
remover_coluna <- function(tabela, nome_coluna) {
  if (nome_coluna %in% colnames(tabela)) {
    set(tabela, j = nome_coluna, value = NULL)
    return(tabela)
  } else {
    cat("A coluna", nome_coluna, "não existe nesta tabela.\n")
    return(tabela)
  }
}

# Aplicar a função para remover a coluna em cada tabela da lista
lista_de_tabelas_sem_coluna <- lapply(lista_de_tabelas, remover_coluna, nome_coluna = nome_da_coluna_a_excluir)

# Nome da coluna que deseja excluir
nome_da_coluna_a_excluir <- "TIPO_RECEITUARIO"

# Função para remover a coluna de uma tabela
remover_coluna <- function(tabela, nome_coluna) {
  if (nome_coluna %in% colnames(tabela)) {
    set(tabela, j = nome_coluna, value = NULL)
    return(tabela)
  } else {
    cat("A coluna", nome_coluna, "não existe nesta tabela.\n")
    return(tabela)
  }
}

# Aplicar a função para remover a coluna em cada tabela da lista
lista_de_tabelas_sem_coluna <- lapply(lista_de_tabelas_sem_coluna, remover_coluna, nome_coluna = nome_da_coluna_a_excluir)

# Nome da coluna que deseja excluir
nome_da_coluna_a_excluir <- "CID10"

# Função para remover a coluna de uma tabela
remover_coluna <- function(tabela, nome_coluna) {
  if (nome_coluna %in% colnames(tabela)) {
    set(tabela, j = nome_coluna, value = NULL)
    return(tabela)
  } else {
    cat("A coluna", nome_coluna, "não existe nesta tabela.\n")
    return(tabela)
  }
}

# Aplicar a função para remover a coluna em cada tabela da lista
lista_de_tabelas_sem_coluna <- lapply(lista_de_tabelas_sem_coluna, remover_coluna, nome_coluna = nome_da_coluna_a_excluir)


# Nome da coluna que deseja excluir
nome_da_coluna_a_excluir <- "CONSELHO_PRESCRITOR"

# Função para remover a coluna de uma tabela
remover_coluna <- function(tabela, nome_coluna) {
  if (nome_coluna %in% colnames(tabela)) {
    set(tabela, j = nome_coluna, value = NULL)
    return(tabela)
  } else {
    cat("A coluna", nome_coluna, "não existe nesta tabela.\n")
    return(tabela)
  }
}

# Aplicar a função para remover a coluna em cada tabela da lista
lista_de_tabelas_sem_coluna <- lapply(lista_de_tabelas_sem_coluna, remover_coluna, nome_coluna = nome_da_coluna_a_excluir)

# Nome da coluna que deseja excluir
nome_da_coluna_a_excluir <- "UF_CONSELHO_PRESCRITOR"

# Função para remover a coluna de uma tabela
remover_coluna <- function(tabela, nome_coluna) {
  if (nome_coluna %in% colnames(tabela)) {
    set(tabela, j = nome_coluna, value = NULL)
    return(tabela)
  } else {
    cat("A coluna", nome_coluna, "não existe nesta tabela.\n")
    return(tabela)
  }
}

# Aplicar a função para remover a coluna em cada tabela da lista
lista_de_tabelas_sem_coluna <- lapply(lista_de_tabelas_sem_coluna, remover_coluna, nome_coluna = nome_da_coluna_a_excluir)

# Combine as tabelas usando rbindlist()
#tabela_combinada1 <- rbindlist(lista_de_tabelas_sem_coluna)
tabela_combinada2 <- rbindlist(lista_de_tabelas_sem_coluna)


# Salve o arquivo combinado em .rdata
#save(tabela_combinada1, file = "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_1.RDATA")
save(tabela_combinada2, file = "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/capitais_2.RDATA")


# Crianco um banco de dados reduzido em função dos anos em .Rdata.
# 2014
ANO_VENDA_2014 <- tabela_combinada2 %>% filter(ANO_VENDA == c('2014'))
save(ANO_VENDA_2014, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ANO_VENDA_2014.RData')

# 2015
ANO_VENDA_2015 <- tabela_combinada2 %>% filter(ANO_VENDA == c('2015'))
save(ANO_VENDA_2015, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ANO_VENDA_2015.RData')

# 2016
ANO_VENDA_2016 <- tabela_combinada2 %>% filter(ANO_VENDA == c('2016'))
save(ANO_VENDA_2016, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ANO_VENDA_2016.RData')

# 2017
ANO_VENDA_2017 <- tabela_combinada2 %>% filter(ANO_VENDA == c('2017'))
save(ANO_VENDA_2017, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ANO_VENDA_2017.RData')

# 2018
ANO_VENDA_2018 <- tabela_combinada2 %>% filter(ANO_VENDA == c('2018'))
save(ANO_VENDA_2018, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ANO_VENDA_2018.RData')

# 2019
ANO_VENDA_2019 <- tabela_combinada2 %>% filter(ANO_VENDA == c('2019'))
save(ANO_VENDA_2019, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ANO_VENDA_2019.RData')

# 2020
ANO_VENDA_2020 <- tabela_combinada2 %>% filter(ANO_VENDA == c('2020'))
save(ANO_VENDA_2020, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ANO_VENDA_2020.RData')



#Carregando bancos por ano e salvando banco de dados completo ####


#criando a coluna de principio ativo principal nos bancos de dados

ANO_VENDA_2014$nova_coluna <- ifelse(
  grepl("CLORIDRATO|ACETATO", ANO_VENDA_2014$PRINCIPIO_ATIVO, ignore.case = TRUE),
  sapply(strsplit(ANO_VENDA_2014$PRINCIPIO_ATIVO, "\\s+"), function(x) paste(x[1:min(3, length(x))], collapse = " ")),
  sapply(strsplit(ANO_VENDA_2014$PRINCIPIO_ATIVO, "\\s+"), function(x) x[1])
)

ANO_VENDA_2015$nova_coluna <- ifelse(
  grepl("CLORIDRATO|ACETATO", ANO_VENDA_2015$PRINCIPIO_ATIVO, ignore.case = TRUE),
  sapply(strsplit(ANO_VENDA_2015$PRINCIPIO_ATIVO, "\\s+"), function(x) paste(x[1:min(3, length(x))], collapse = " ")),
  sapply(strsplit(ANO_VENDA_2015$PRINCIPIO_ATIVO, "\\s+"), function(x) x[1])
)


ANO_VENDA_2016$nova_coluna <- ifelse(
  grepl("CLORIDRATO|ACETATO", ANO_VENDA_2016$PRINCIPIO_ATIVO, ignore.case = TRUE),
  sapply(strsplit(ANO_VENDA_2016$PRINCIPIO_ATIVO, "\\s+"), function(x) paste(x[1:min(3, length(x))], collapse = " ")),
  sapply(strsplit(ANO_VENDA_2016$PRINCIPIO_ATIVO, "\\s+"), function(x) x[1])
)

ANO_VENDA_2017$nova_coluna <- ifelse(
  grepl("CLORIDRATO|ACETATO", ANO_VENDA_2017$PRINCIPIO_ATIVO, ignore.case = TRUE),
  sapply(strsplit(ANO_VENDA_2017$PRINCIPIO_ATIVO, "\\s+"), function(x) paste(x[1:min(3, length(x))], collapse = " ")),
  sapply(strsplit(ANO_VENDA_2017$PRINCIPIO_ATIVO, "\\s+"), function(x) x[1])
)

ANO_VENDA_2018$nova_coluna <- ifelse(
  grepl("CLORIDRATO|ACETATO", ANO_VENDA_2018$PRINCIPIO_ATIVO, ignore.case = TRUE),
  sapply(strsplit(ANO_VENDA_2018$PRINCIPIO_ATIVO, "\\s+"), function(x) paste(x[1:min(3, length(x))], collapse = " ")),
  sapply(strsplit(ANO_VENDA_2018$PRINCIPIO_ATIVO, "\\s+"), function(x) x[1])
)

ANO_VENDA_2019$nova_coluna <- ifelse(
  grepl("CLORIDRATO|ACETATO", ANO_VENDA_2019$PRINCIPIO_ATIVO, ignore.case = TRUE),
  sapply(strsplit(ANO_VENDA_2019$PRINCIPIO_ATIVO, "\\s+"), function(x) paste(x[1:min(3, length(x))], collapse = " ")),
  sapply(strsplit(ANO_VENDA_2019$PRINCIPIO_ATIVO, "\\s+"), function(x) x[1])
)

ANO_VENDA_2020$nova_coluna <- ifelse(
  grepl("CLORIDRATO|ACETATO", ANO_VENDA_2020$PRINCIPIO_ATIVO, ignore.case = TRUE),
  sapply(strsplit(ANO_VENDA_2020$PRINCIPIO_ATIVO, "\\s+"), function(x) paste(x[1:min(3, length(x))], collapse = " ")),
  sapply(strsplit(ANO_VENDA_2020$PRINCIPIO_ATIVO, "\\s+"), function(x) x[1])
)

#descobrindo o principio ativo mais vendido considerando apenas o principal principio de cada medicamento:

#coluna_combinada <- c(ANO_VENDA_2014$nova_coluna, ANO_VENDA_2015$nova_coluna, ANO_VENDA_2016$nova_coluna, ANO_VENDA_2017$nova_coluna, ANO_VENDA_2018$nova_coluna, ANO_VENDA_2019$nova_coluna, ANO_VENDA_2020$nova_coluna)


# Nome da coluna que deseja excluir
#nome_da_coluna_a_excluir <- "IDADE"

# Função para remover a coluna de uma tabela
#remover_coluna <- function(tabela, nome_coluna) {
#  if (nome_coluna %in% colnames(tabela)) {
#    set(tabela, j = nome_coluna, value = NULL)
#    return(tabela)
#  } else {
#    cat("A coluna", nome_coluna, "não existe nesta tabela.\n")
#    return(tabela)
#  }
#}

# Aplicar a função para remover a coluna em cada tabela da lista
#lista_de_tabelas <- lapply(lista_de_tabelas, remover_coluna, nome_coluna = nome_da_coluna_a_excluir)

#Criando banco apenas com informação das vendas 
#Principios_Mais_Vendidos <- rbindlist(lista_de_tabelas)

#save(Principios_Mais_Vendidos, file = 'C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Principios_Mais_Vendidos.RData')

library(dplyr)

coluna_combinada_df <- bind_rows(
  ANO_VENDA_2014 %>% select(nova_coluna),
  ANO_VENDA_2015 %>% select(nova_coluna),
  ANO_VENDA_2016 %>% select(nova_coluna),
  ANO_VENDA_2017 %>% select(nova_coluna),
  ANO_VENDA_2018 %>% select(nova_coluna),
  ANO_VENDA_2019 %>% select(nova_coluna),
  ANO_VENDA_2020 %>% select(nova_coluna)
)


View ((coluna_combinada_df %>% group_by(nova_coluna) %>% tally()) %>% 
        arrange(desc(n)))

TOP14 <- ANO_VENDA_2014 %>% filter(nova_coluna == c('AMOXICILINA','AZITROMICINA',
                                                    'CLORIDRATO DE CIPROFLOXACINO',
                                                    'CEFALEXINA','LEVOFLOXACINO',
                                                    'METRONIDAZOL','DEXAMETASONA',
                                                    'CLORIDRATO DE MOXIFLOXACINO', 'SULFAMETOXAZOL', 'NORFLOXACINO'))

TOP15 <- ANO_VENDA_2015 %>% filter(nova_coluna == c('AMOXICILINA','AZITROMICINA',
                                                    'CLORIDRATO DE CIPROFLOXACINO',
                                                    'CEFALEXINA','LEVOFLOXACINO',
                                                    'METRONIDAZOL','DEXAMETASONA',
                                                    'CLORIDRATO DE MOXIFLOXACINO', 'SULFAMETOXAZOL', 'NORFLOXACINO'))

TOP16 <- ANO_VENDA_2016 %>% filter(nova_coluna == c('AMOXICILINA','AZITROMICINA',
                                                    'CLORIDRATO DE CIPROFLOXACINO',
                                                    'CEFALEXINA','LEVOFLOXACINO',
                                                    'METRONIDAZOL','DEXAMETASONA',
                                                    'CLORIDRATO DE MOXIFLOXACINO', 'SULFAMETOXAZOL', 'NORFLOXACINO'))

TOP17 <- ANO_VENDA_2017 %>% filter(nova_coluna ==c('AMOXICILINA','AZITROMICINA',
                                                   'CLORIDRATO DE CIPROFLOXACINO',
                                                   'CEFALEXINA','LEVOFLOXACINO',
                                                   'METRONIDAZOL','DEXAMETASONA',
                                                   'CLORIDRATO DE MOXIFLOXACINO', 'SULFAMETOXAZOL', 'NORFLOXACINO'))

TOP18 <- ANO_VENDA_2018 %>% filter(nova_coluna ==c('AMOXICILINA','AZITROMICINA',
                                                   'CLORIDRATO DE CIPROFLOXACINO',
                                                   'CEFALEXINA','LEVOFLOXACINO',
                                                   'METRONIDAZOL','DEXAMETASONA',
                                                   'CLORIDRATO DE MOXIFLOXACINO', 'SULFAMETOXAZOL', 'NORFLOXACINO'))

TOP19 <- ANO_VENDA_2019 %>% filter(nova_coluna == c('AMOXICILINA','AZITROMICINA',
                                                    'CLORIDRATO DE CIPROFLOXACINO',
                                                    'CEFALEXINA','LEVOFLOXACINO',
                                                    'METRONIDAZOL','DEXAMETASONA',
                                                    'CLORIDRATO DE MOXIFLOXACINO', 'SULFAMETOXAZOL', 'NORFLOXACINO'))

TOP20 <- ANO_VENDA_2020 %>% filter(nova_coluna == c('AMOXICILINA','AZITROMICINA',
                                                    'CLORIDRATO DE CIPROFLOXACINO',
                                                    'CEFALEXINA','LEVOFLOXACINO',
                                                    'METRONIDAZOL','DEXAMETASONA',
                                                    'CLORIDRATO DE MOXIFLOXACINO', 'SULFAMETOXAZOL', 'NORFLOXACINO'))

lista_de_tabelas <- list(TOP15,TOP14,TOP16,TOP17,TOP18,TOP19)


#Ajustando o a coluna de descrição pelo R #################################################################
TOP_PRINCIPIOS <- rbindlist(lista_de_tabelas)


save(TOP_PRINCIPIOS, file = "C:/Users/Simao/OneDrive/Documentos/09.R-TCC/TCC/R - TCC/Base de dados/TOP_PRINCIPIOS_CORRIGIDO.RDATA")
load('C:/Users/Simao/OneDrive/Documentos/09.R-TCC/TCC/R - TCC/Base de dados/TOP_PRINCIPIOS_CORRIGIDO.RDATA')

#identificando padrões de descrição de medicamentos 

TESTE <- ((TOP_PRINCIPIOS %>% group_by(nova_coluna) %>% tally()) %>% 
            arrange(desc(n)))

library(dplyr)
library(stringr)
library(tidyr)

# Função para extrair informações
extrair_informacoes <- function(descricao) {
  dosagem <- str_extract(descricao, "\\(?\\d+,?\\d*\\)?\\s*(MG|G|UG|PCC)(/ML)?|\\(\\d+,?\\d*\\+\\d+,?\\d*\\)\\s*(MG|G|UG|PCC)(/ML)?")
  
  if (!is.na(dosagem) && str_detect(dosagem, "\\(\\d+,?\\d*\\+\\d+,?\\d*\\)\\s*(MG|G|UG|PCC)(/ML)?")) {
    dosagem <- str_extract(dosagem, "\\(\\d+,?\\d*")
    dosagem <- str_c(dosagem, " PCC/ML)")
  }
  
  if (!is.na(dosagem)) {
    dosagem <- str_replace_all(dosagem, "[()]", "")
    dosagem <- str_trim(dosagem)
  }
  
  tipo_embalagem <- str_extract(descricao, "(CT BL AL|CT FR VD|CT FR GOT PLAS OPC|XPE CT FR VD|CT STR AL/AL|CT FR PLAS|CT FR VD TRANS)")
  num_unidades <- str_extract(descricao, "X\\s*\\d+")
  volume <- str_extract(descricao, "\\d+\\s*(ML|L)")
  
  num_unidades <- str_replace_all(num_unidades, "X\\s*", "")
  
  return(list(
    DOSAGEM = dosagem,
    TIPO_EMBALAGEM = tipo_embalagem,
    NUM_UNIDADES = num_unidades,
    VOLUME = volume
  ))
}


TOP14 <- TOP14 %>%
  rowwise() %>%
  mutate(info = list(extrair_informacoes(DESCRICAO_APRESENTACAO))) %>%
  unnest_wider(info)

TOP15 <- TOP15 %>%
  rowwise() %>%
  mutate(info = list(extrair_informacoes(DESCRICAO_APRESENTACAO))) %>%
  unnest_wider(info)
TOP16 <- TOP16 %>%
  rowwise() %>%
  mutate(info = list(extrair_informacoes(DESCRICAO_APRESENTACAO))) %>%
  unnest_wider(info)
TOP17 <- TOP17 %>%
  rowwise() %>%
  mutate(info = list(extrair_informacoes(DESCRICAO_APRESENTACAO))) %>%
  unnest_wider(info)
TOP18 <- TOP18 %>%
  rowwise() %>%
  mutate(info = list(extrair_informacoes(DESCRICAO_APRESENTACAO))) %>%
  unnest_wider(info)
TOP19 <- TOP19 %>%
  rowwise() %>%
  mutate(info = list(extrair_informacoes(DESCRICAO_APRESENTACAO))) %>%
  unnest_wider(info)

save(dados_combinados, file = "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/dados_combinados_NOVO.RDATA")

#Criando bancos de dados de ecxel para suporte##################################


TESTE <- ((TOP_PRINCIPIOS %>% group_by(DESCRICAO_APRESENTACAO) %>% tally()) %>% 
            arrange(desc(n)))
# Salve o dataframe como um arquivo Excel
write_xlsx(TESTE, "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/TESTE5.xlsx")
# Instale e carregue a biblioteca readxl


#Trabalhando o banco de dados principal com o arquivo de suporte ####


# Importe o arquivo Excel e o banco de dados principal

load('C:/Users/Simao/OneDrive/Documentos/09.R-TCC/TCC/R - TCC/Base de dados/dados_combinados_NOVO.RDATA')
dados <- read_excel("C:/Users/Simao/OneDrive/Documentos/09.R-TCC/TCC/R - TCC/Resultados/TESTE2.xlsx")

### limpando o efeito do R, para juntar o banco de dados tratado no ecxel com o banco original

dados_sem_coluna <- dados_combinados %>% select(-VOLUME)
dados_sem_coluna <- dados_sem_coluna %>% select(-DOSAGEM)
dados_sem_coluna <- dados_sem_coluna %>% select(-NUM_UNIDADES)
dados_sem_coluna <- dados_sem_coluna %>% select(-TIPO_EMBALAGEM)

#juntando o banco de dados horiginal com o banco de dados tratado no ecxel 

dados_combinados <- merge(dados_sem_coluna,dados, by = "DESCRICAO_APRESENTACAO", all.x = TRUE)


#verificando linhas de dosagem com NAs, 
#para interpretar o banco com mais confiabilidade (não é necessário em todas as vezes)

TESTE3 <- dados_combinados %>%
  group_by(DOSAGEM,DESCRICAO_APRESENTACAO) %>%  # Agrupar por dosagem e princípio ativo
  tally() %>%                           # Contar ocorrências
  rename(CONTAGEM = n) %>%             # Renomear coluna para CONTAGEM
  arrange(desc(CONTAGEM))                # Ordenar por contagem em ordem decrescente



# Substitua as vírgulas por pontos
dados_combinados$DOSAGEM <- gsub(",", ".", dados_combinados$DOSAGEM)

# Agora remova todos os caracteres não numéricos, exceto o ponto
dados_combinados$DOSAGEM <- as.numeric(gsub("[^0-9\\.]", "", dados_combinados$DOSAGEM))

# Substitua as vírgulas por pontos
dados_combinados$NUM_UNIDADES <- gsub(",", ".", dados_combinados$NUM_UNIDADES)

# Agora remova todos os caracteres não numéricos, exceto o ponto
dados_combinados$NUM_UNIDADES <- as.numeric(gsub("[^0-9\\.]", "", dados_combinados$NUM_UNIDADES))

# Substitua as vírgulas por pontos
dados_combinados$VOLUME <- gsub(",", ".", dados_combinados$VOLUME)

# Agora remova todos os caracteres não numéricos, exceto o ponto
dados_combinados$VOLUME <- as.numeric(gsub("[^0-9\\.]", "", dados_combinados$VOLUME))

#Tratando variaveis 

# Substitua "NA" por 1 pois as colunas serão multiplicadas entre si 
dados_combinados$VOLUME[is.na(dados_combinados$VOLUME)] <- 1
dados_combinados$NUM_UNIDADES[is.na(dados_combinados$NUM_UNIDADES)] <- 1

dados_combinados$DOSAGEM[is.na(dados_combinados$DOSAGEM)] <- 400


TESTE <- ((dados_combinados %>% group_by(QTD_VENDIDA) %>% tally()) %>% 
            arrange(desc(n)))


#criando o banco de dados final Pré tratamento de QTD_VENDIDA
ABSOLUTO <- dados_combinados

#Carregando banco de dados ####
# o banco de dados absoluto foi o utilizado no tcc, mas posso modificar 
#ele a partir do banco dados combinados, tomando novas decisões para a coluna qtd vendas

ABSOLUTO <- ABSOLUTO %>% rename(PRINCIPIO_ATIVO_PRINCIPAL = nova_coluna )

TESTE <- ((ABSOLUTO %>% group_by(QTD_VENDIDA) %>% tally()) %>% 
            arrange(desc(n)))


# Função para calcular a moda
moda <- function(x) {
  uniq_x <- unique(na.omit(x))             # Remover NA e obter valores únicos
  uniq_x[which.max(tabulate(match(x, uniq_x)))]  # Retornar o valor mais frequente
}

# Calcular métricas de centralidade ignorando valores ausentes
media <- mean(ABSOLUTO$QTD_VENDIDA, na.rm = TRUE)       # Média
mediana <- median(ABSOLUTO$QTD_VENDIDA, na.rm = TRUE)   # Mediana
minimo <- min(ABSOLUTO$QTD_VENDIDA, na.rm = TRUE)       # Mínimo
maximo <- max(ABSOLUTO$QTD_VENDIDA, na.rm = TRUE)       # Máximo
quantis <- quantile(ABSOLUTO$QTD_VENDIDA, na.rm = TRUE) # Quantis (25%, 50%, 75%)
moda_valor <- moda(ABSOLUTO$QTD_VENDIDA)                # Moda


# primeira opção de solução, filtro manual
# Substituindo valores acima de um determinado patamar por NAs
ABSOLUTO$QTD_VENDIDA[ABSOLUTO$QTD_VENDIDA > 25] <- NA
# Substituir NA pela média
ABSOLUTO$QTD_VENDIDA[is.na(ABSOLUTO$QTD_VENDIDA)] <- 2


#segunda opção de correção usando intervalo inter quartis
# Correção: Calcular os quartis fora do mutate e depois aplicar a condição
quartis <- quantile(ABSOLUTO$QTD_VENDIDA, probs = c(0.25, 0.75))
limite_inferior <- quartis[1] - 1.5 * IQR(ABSOLUTO$QTD_VENDIDA)
limite_superior <- quartis[2] + 1.5 * IQR(ABSOLUTO$QTD_VENDIDA)

ABSOLUTO <- ABSOLUTO %>%
  mutate(QTD_VENDIDA = ifelse(QTD_VENDIDA < limite_inferior | QTD_VENDIDA > limite_superior, NA, QTD_VENDIDA))
# Calcular a média dos valores não ausentes
media <- mean(ABSOLUTO$QTD_VENDIDA, na.rm = TRUE)
# Substituir NA pela média
ABSOLUTO$QTD_VENDIDA[is.na(ABSOLUTO$QTD_VENDIDA)] <- 2


# Crie uma nova coluna para o resultado da multiplicação
ABSOLUTO$MASSA_TOTAL <- ABSOLUTO$VOLUME * ABSOLUTO$NUM_UNIDADES * ABSOLUTO$DOSAGEM*ABSOLUTO$QTD_VENDIDA


#Salvando banco de dados para visualização e análise dos dados
save(ABSOLUTO, file = "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/ABSOLUTO.RDATA")
#load('C:/Users/Simao/OneDrive/Documentos/09.R-TCC/TCC/R - TCC/Base de dados/ABSOLUTO.RDATA')

#Ainda não entendi essa parte ####

resultado %>% ggplot(aes(x= PRINCIPIO_ATIVO_PRINCIPAL, y = MASSA_TOTAL))+ 
  geom_bar(stat="identity", fill="black")+coord_flip()+
  theme(legend.position = 'top') +
  labs(x ="PRINCÍPIO ATIVO", y = "MASSA TOTAL COMERCIALIZADA (Mg)") 


# Use a função aggregate() para somar os valores de cada categoria
resultado <- aggregate(ABSOLUTO_MASSA_TOTAL$MASSA_TOTAL, by=list(categoria=ABSOLUTO_MASSA_TOTAL$PRINCIPIO_ATIVO_PRINCIPAL), FUN=sum)

# Renomeie as colunas do dataframe resultado
colnames(resultado) <- c("Categoria", "Soma dos Valores")

# Carregue a biblioteca ggplot2
library(ggplot2)

# Ordene o dataframe 'resultado' do maior para o menor valor
resultado <- resultado[order(-resultado$`Soma dos Valores`),]

# Crie o gráfico de barras minimalista em preto e branco com um título
grafico <- ggplot(resultado, aes(x=reorder(Categoria, `Soma dos Valores`), y=`Soma dos Valores`)) +
  geom_bar(stat="identity", fill="black") +
  coord_flip() +
  labs(x="Categoria", y="Soma dos Valores") +
  ggtitle("Soma dos Valores por Categoria") + # Adicione um título ao gráfico
  theme_minimal() +
  theme(text = element_text(size=40), 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.border = element_blank(), 
        panel.background = element_blank())

# Imprima o gráfico
print(grafico)

# Selecione apenas as 5 categorias com os maiores valores
resultado_top5 <- resultado[order(-resultado$`Soma dos Valores`),][1:5,]

# Crie o gráfico de barras minimalista em preto e branco com um título
grafico <- ggplot(resultado_top5, aes(x=reorder(Categoria, `Soma dos Valores`), y=`Soma dos Valores`)) +
  geom_bar(stat="identity", fill="black") +
  coord_flip() +
  labs(x="Categoria", y="Soma dos Valores") +
  ggtitle("Top 5 Categorias por Soma dos Valores") + # Adicione um título ao gráfico
  theme_minimal() +
  theme(text = element_text(size=30), 
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        panel.border = element_blank(), 
        panel.background = element_blank()) +
  scale_y_continuous(breaks = seq(min(resultado_top5$`Soma dos Valores`), max(resultado_top5$`Soma dos Valores`), by = 1)) # Aumente o número de marcações no eixo dos valores

# Imprima o gráfico
print(grafico)


# Salvar o gráfico como um arquivo de imagem (por exemplo, PNG)
ggsave("grafico_medicamentos.png", plot = grafico, width = 8, height = 6, dpi = 300)


TESTE <- ((ABSOLUTO %>% group_by(MASSA_TOTAL,DESCRICAO_APRESENTACAO) %>% tally()) %>% 
            arrange(desc(n)))

ggplot(TESTE, aes(x = MASSA_TOTAL)) +
  geom_histogram(binwidth = 0.5, fill = "blue", color = "black", alpha = 0.7) +
  labs(title = "Histograma de uma Distribuição Normal",
       x = "Valor",
       y = "Frequência") +
  theme_minimal()


#Genrando gráficos e tabélas para análise #####
#save(TOP_PRINCIPIOS, file = "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/TOP_PRINCIPIOS.RDATA")
load('C:/Users/Simao/Documentos/09.R-TCC/TCC/R - TCC/Base de dados/ABSOLUTO.RDATA')

#ajustando o banco para grar os gráficos de maneira mais organizada
ABSOLUTO <- ABSOLUTO %>% select(-total)

ABSOLUTO$MASSA_TOTAL_kg <- ABSOLUTO$MASSA_TOTAL* 1/1000000

#GERAR BANCOS AUXILIARES ################################################
Medicamentos_mais_vendidos <- ABSOLUTO %>%
  group_by(PRINCIPIO_ATIVO_PRINCIPAL) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE))

principio_ativo_ano <- ABSOLUTO %>%
  group_by(ANO_VENDA, PRINCIPIO_ATIVO_PRINCIPAL) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE))

municipio_ano <- ABSOLUTO %>%
  group_by(ANO_VENDA, MUNICIPIO_VENDA) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE))

principio_ativo <- ABSOLUTO %>%
  group_by(PRINCIPIO_ATIVO_PRINCIPAL) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE))

Gráfico_RISCO <- ABSOLUTO %>%
  group_by(ANO_VENDA, PRINCIPIO_ATIVO_PRINCIPAL, MUNICIPIO_VENDA) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE))

## Salve o dataframe como um arquivo Excel####
write_xlsx(Tendencia_geral, "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/Tendencia_geral.xlsx")
write_xlsx(principio_ativo_ano, "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/principio_ativo_ano.xlsx")
write_xlsx(principio_ativo, "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/principio_ativo.xlsx")
write_xlsx(municipio_ano, "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/municipio_ano_amoxilina.xlsx")
write_xlsx(Gráfico_RISCO, "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/Base de dados/Gráfico_RISCO.xlsx")
write_xlsx(Medicamentos_mais_vendidos, "C:/Users/anaur_20kyqxs/OneDrive/Área de Trabalho/Simão/TCC/R - TCC/resultados/Medicamentos_mais_vendidos.xlsx")

#GERAR TENDENCIAS PRINCIPIOS ATIVOS #################################################################################

# Instalar se necessário
install.packages("ggpmisc")

library(ggplot2)
library(dplyr)
library(ggpubr)
library(ggpmisc)

df <- principio_ativo_ano

unique_ingredients <- unique(df$PRINCIPIO_ATIVO_PRINCIPAL)
ingredient_list1 <- unique_ingredients[1:6]
ingredient_list2 <- unique_ingredients[7:10]

create_plots <- function(ingredients, nrows, ncols) {
  plots <- list()
  
  for (ingredient in ingredients) {
    filtered_data <- df %>% filter(PRINCIPIO_ATIVO_PRINCIPAL == ingredient)
    
    y_min <- min(filtered_data$MASSA_TOTAL_kg, na.rm = TRUE)
    y_range <- max(filtered_data$MASSA_TOTAL_kg, na.rm = TRUE) - y_min
    
    plot <- ggplot(filtered_data, aes(x = ANO_VENDA, y = MASSA_TOTAL_kg)) +
      geom_point(color = "steelblue") +
      geom_smooth(method = "lm", se = FALSE, color = "firebrick") +
      labs(x = "Ano da Venda", y = "Massa Total (Kg)", title = ingredient) +
      theme_pubr() +
      theme(plot.title = element_text(hjust = 0.5)) +
      
      # Equação e R²
      stat_regline_equation(
        label.x = 2014,
        label.y = y_min + 0.05 * y_range,
        aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~~")),
        formula = y ~ x,
        parse = TRUE
      ) +
      
      # p-valor com ggpmisc
      stat_fit_glance(
        method = "lm",
        method.args = list(formula = y ~ x),
        label.x = 2014,
        label.y = y_min + 0.15 * y_range,
        aes(label = paste("p == ", signif(..p.value.., digits = 3))),
        parse = TRUE
      )
    
    plots[[ingredient]] <- plot
  }
  
  ggarrange(plotlist = plots, nrow = nrows, ncol = ncols, common.legend = TRUE, legend = "bottom")
}

# Gerar gráficos
create_plots(ingredient_list1, 2, 3)
create_plots(ingredient_list2, 2, 2)

#gerar tendencias principios ativos 4x4 apenas os com maior significancia ##########

library(ggplot2)
library(dplyr)
library(ggpubr)
library(ggpmisc)

df <- principio_ativo_ano

# Função para extrair p-valor da regressão
get_p_value <- function(ingredient) {
  data <- df %>% filter(PRINCIPIO_ATIVO_PRINCIPAL == ingredient)
  model <- lm(MASSA_TOTAL_kg ~ ANO_VENDA, data = data)
  summary(model)$coefficients[2, 4]  # p-valor da variável ANO_VENDA
}

# Ingredientes únicos
unique_ingredients <- unique(df$PRINCIPIO_ATIVO_PRINCIPAL)

# Calcular p-valor para todos
pvals <- sapply(unique_ingredients, get_p_value)

# Converter em data.frame
pval_df <- data.frame(
  PRINCIPIO_ATIVO_PRINCIPAL = unique_ingredients,
  p_value = pvals,
  stringsAsFactors = FALSE
)

# Selecionar Amoxicilina + os 5 mais significativos (exceto ela)
selected_ingredients <- pval_df %>%
  arrange(p_value) %>%
  filter(PRINCIPIO_ATIVO_PRINCIPAL != "AMOXICILINA") %>%
  slice(1:5) %>%
  pull(PRINCIPIO_ATIVO_PRINCIPAL)

# Incluir Amoxicilina manualmente
selected_ingredients <- c("AMOXICILINA", selected_ingredients)

# Criar gráficos
create_plots <- function(ingredients, nrows, ncols) {
  plots <- list()
  
  for (ingredient in ingredients) {
    filtered_data <- df %>% filter(PRINCIPIO_ATIVO_PRINCIPAL == ingredient)
    
    y_min <- min(filtered_data$MASSA_TOTAL_kg, na.rm = TRUE)
    y_range <- max(filtered_data$MASSA_TOTAL_kg, na.rm = TRUE) - y_min
    
    plot <- ggplot(filtered_data, aes(x = ANO_VENDA, y = MASSA_TOTAL_kg)) +
      geom_point(color = "steelblue") +
      geom_smooth(method = "lm", se = FALSE, color = "firebrick") +
      labs(x = "Ano da Venda", y = "Massa Total (Kg)", title = ingredient) +
      theme_pubr() +
      theme(plot.title = element_text(hjust = 0.5)) +
      
      stat_regline_equation(
        label.x = 2014,
        label.y = y_min + 0.05 * y_range,
        aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~~")),
        formula = y ~ x,
        parse = TRUE
      ) +
      
      stat_fit_glance(
        method = "lm",
        method.args = list(formula = y ~ x),
        label.x = 2014,
        label.y = y_min + 0.15 * y_range,
        aes(label = paste("p == ", signif(..p.value.., digits = 3))),
        parse = TRUE
      )
    
    plots[[ingredient]] <- plot
  }
  
  ggarrange(plotlist = plots, nrow = nrows, ncol = ncols, common.legend = TRUE, legend = "bottom")
}

# Plotar (2 linhas, 3 colunas para 6 gráficos)
create_plots(selected_ingredients, 2, 3)


#GERAR TENDENCIAS MUNICIPIOS ####################################################################

df <- municipio_ano
# Load required libraries
library(ggplot2)
library(dplyr)
library(ggpubr)
# Get unique active ingredients and split into two lists
unique_ingredients <- unique(df$MUNICIPIO_VENDA)
ingredient_list1 <- unique_ingredients[1:9]
ingredient_list2 <- unique_ingredients[10:18]
ingredient_list3 <- unique_ingredients[19:27]


# Function to create plots
create_plots <- function(ingredients, nrows, ncols) {
  plots <- list() 
  
  for (ingredient in ingredients) {
    filtered_data <- df %>% filter(MUNICIPIO_VENDA == ingredient)
    
    # Linear regression model
    model <- lm(MASSA_TOTAL_kg ~ ANO_VENDA, data = filtered_data)
    
    # Calculate min and max values for positioning the equation
    y_min <- min(filtered_data$MASSA_TOTAL_kg)
    y_range <- max(filtered_data$MASSA_TOTAL_kg) - y_min
    
    # Create the plot
    plot <- ggplot(filtered_data, aes(x = ANO_VENDA, y = MASSA_TOTAL_kg)) +
      geom_point(color = "steelblue") +  
      geom_smooth(method = "lm", se = FALSE, color = "firebrick") +
      labs(x = "Ano da Venda", y = "Massa Total (kg)", title = ingredient) +
      theme_pubr() + 
      theme(plot.title = element_text(hjust = 0.5)) + 
      # Equation at bottom-left, but with numeric y position
      stat_regline_equation(
        label.x = 2014,
        label.y = y_min + 0.05 * y_range,  # Adjust the multiplier (0.05) as needed
        aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~~")),
        formula = y ~ x,
        parse = TRUE
      ) 
    
    plots[[ingredient]] <- plot 
  }
  
  # Arrange plots in a grid
  ggarrange(plotlist = plots, nrow = nrows, ncol = ncols, common.legend = TRUE, legend = "bottom")
}

# Create plots for the first 9 ingredients
create_plots(ingredient_list1, 3, 3)

# Create plots for the remaining 9 ingredients
create_plots(ingredient_list2, 3, 3)

create_plots(ingredient_list3, 3, 3)


#gerar tendencias municipios com o p valor #########

# Carregar bibliotecas
library(ggplot2)
library(dplyr)
library(ggpubr)
library(ggpmisc)

# Base de dados
df <- municipio_ano

# Função auxiliar para calcular p-valor da regressão linear por município
get_p_value <- function(municipio) {
  dados <- df %>% filter(MUNICIPIO_VENDA == municipio)
  modelo <- tryCatch(lm(MASSA_TOTAL_kg ~ ANO_VENDA, data = dados), error = function(e) return(NA))
  if (any(is.na(modelo))) return(NA)
  summary(modelo)$coefficients[2, 4]  # p-valor da variável ANO_VENDA
}

# Calcular p-valores
municipios <- unique(df$MUNICIPIO_VENDA)
p_vals <- sapply(municipios, get_p_value)

# Selecionar os 6 municípios com menor p-valor
melhores_municipios <- data.frame(MUNICIPIO = municipios, p_value = p_vals) %>%
  filter(!is.na(p_value)) %>%
  arrange(p_value) %>%
  slice(1:6) %>%
  pull(MUNICIPIO)
# Função para gerar gráficos
create_plots <- function(ingredients, nrows, ncols) {
  plots <- list()
  
  for (ingredient in ingredients) {
    filtered_data <- df %>% filter(MUNICIPIO_VENDA == ingredient)
    
    # Definindo limites para o gráfico
    y_min <- min(filtered_data$MASSA_TOTAL_kg, na.rm = TRUE)
    y_range <- max(filtered_data$MASSA_TOTAL_kg, na.rm = TRUE) - y_min
    
    # Modelo de regressão linear
    model <- lm(MASSA_TOTAL_kg ~ ANO_VENDA, data = filtered_data)
    
    # Plot com pontos e linha de regressão
    plot <- ggplot(filtered_data, aes(x = ANO_VENDA, y = MASSA_TOTAL_kg)) +
      geom_point(color = "steelblue") +
      geom_smooth(method = "lm", se = FALSE, color = "firebrick") +
      labs(x = "Ano da Venda", y = "Massa Total (kg)", title = ingredient) +
      theme_pubr() +
      theme(plot.title = element_text(hjust = 0.5)) +
      
      # Exibindo a equação e R²
      stat_regline_equation(
        label.x = 2014,
        label.y = y_min + 0.05 * y_range,
        aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~~")),
        formula = y ~ x,
        parse = TRUE
      ) +
      
      # Exibindo o p-valor no canto inferior direito
      stat_fit_glance(
        method = "lm",
        method.args = list(formula = y ~ x),
        aes(label = paste("p == ", signif(..p.value.., digits = 3))),
        label.x = max(filtered_data$ANO_VENDA),  # Posição do p-valor no canto direito
        label.y = y_min - 0.1 * y_range,         # Posição do p-valor na parte inferior
        parse = TRUE
      )
    
    plots[[ingredient]] <- plot
  }
  
  # Agrupar os gráficos em uma grade
  ggarrange(plotlist = plots, nrow = nrows, ncol = ncols, common.legend = TRUE, legend = "bottom")
}

# Gerar os gráficos dos 6 municípios com menor p-valor
create_plots(melhores_municipios, 2, 3)



#GERAR GRÀFICO MAIS GERAL POR Kg #########################################################

# Carregar bibliotecas
library(ggplot2)
library(dplyr)
library(stringr)
library(RColorBrewer)  # Para paletas de cores

# Lista das capitais
capitais <- c(
  'RIO BRANCO', 'MACEIÓ', 'MACAPÁ', 'SALVADOR', 'JOÃO PESSOA', 'RECIFE'
)

# Agrupar os dados por ano, princípio ativo e município
dados_agrupados <- ABSOLUTO %>%
  group_by(ANO_VENDA, PRINCIPIO_ATIVO_PRINCIPAL, MUNICIPIO_VENDA) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE), .groups = "drop")

# Ajustar ordem dos municípios
dados_agrupados$MUNICIPIO_VENDA <- factor(dados_agrupados$MUNICIPIO_VENDA, levels = capitais)

# Função para gerar gráficos por blocos de 6 (2x3)
gerar_graficos <- function(dados, capitais, n) {
  anos <- sort(unique(dados$ANO_VENDA))
  
  for (i in seq(1, length(capitais), by = n)) {
    capitais_bloco <- capitais[i:min(i + n - 1, length(capitais))]
    dados_bloco <- dados %>% filter(MUNICIPIO_VENDA %in% capitais_bloco)
    
    titulo <- str_wrap(
      paste("Vendas de Medicamentos Controlados por Ano nas Capitais:",
            paste(capitais_bloco, collapse = ", ")),
      width = 80
    )
    
    p <- ggplot(dados_bloco, aes(x = ANO_VENDA, y = MASSA_TOTAL_kg, fill = PRINCIPIO_ATIVO_PRINCIPAL)) +
      geom_bar(stat = "identity", position = "dodge", color = "black") +
      scale_fill_brewer(palette = "Set3") +  # ✅ Paleta com até 12 cores
      scale_x_continuous(breaks = anos) +
      facet_wrap(~ MUNICIPIO_VENDA, scales = "free_y", ncol = 3, nrow = 2) +  # ✅ Grade 2x3
      labs(
        title = titulo,
        x = "Ano da venda",
        y = "Massa Total Vendida (Kg)",
        fill = "Princípio Ativo"
      ) +
      theme_minimal(base_size = 10) +
      theme(
        plot.title = element_text(hjust = 0.5, size = 14),
        strip.text = element_text(size = 10),
        axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "bottom",
        legend.text = element_text(size = 9),
        legend.title = element_text(size = 10)
      )
    
    print(p)
  }
}

# Gerar os gráficos em blocos de 6 capitais (2 linhas x 3 colunas)
gerar_graficos(dados_agrupados, capitais, 6)

######################################################################################3

AMOXICILINA <- ABSOLUTO %>% filter(PRINCIPIO_ATIVO_PRINCIPAL == c('AMOXICILINA'))

municipio_ano <- AMOXICILINA %>%
  group_by(ANO_VENDA, MUNICIPIO_VENDA) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE))


df <- municipio_ano
# Load required libraries
library(ggplot2)
library(dplyr)
library(ggpubr)
# Get unique active ingredients and split into two lists
unique_ingredients <- unique(df$MUNICIPIO_VENDA)
ingredient_list1 <- unique_ingredients[1:9]
ingredient_list2 <- unique_ingredients[10:18]
ingredient_list3 <- unique_ingredients[19:27]


# Function to create plots
create_plots <- function(ingredients, nrows, ncols) {
  plots <- list() 
  
  for (ingredient in ingredients) {
    filtered_data <- df %>% filter(MUNICIPIO_VENDA == ingredient)
    
    # Linear regression model
    model <- lm(MASSA_TOTAL_kg ~ ANO_VENDA, data = filtered_data)
    
    # Calculate min and max values for positioning the equation
    y_min <- min(filtered_data$MASSA_TOTAL_kg)
    y_range <- max(filtered_data$MASSA_TOTAL_kg) - y_min
    
    # Create the plot
    plot <- ggplot(filtered_data, aes(x = ANO_VENDA, y = MASSA_TOTAL_kg)) +
      geom_point(color = "steelblue") +  
      geom_smooth(method = "lm", se = FALSE, color = "firebrick") +
      labs(x = "Ano da Venda", y = "Massa Total (kg)", title = ingredient) +
      theme_pubr() + 
      theme(plot.title = element_text(hjust = 0.5)) + 
      # Equation at bottom-left, but with numeric y position
      stat_regline_equation(
        label.x = 2014,
        label.y = y_min + 0.05 * y_range,  # Adjust the multiplier (0.05) as needed
        aes(label = paste(..eq.label.., ..rr.label.., sep = "~~~~")),
        formula = y ~ x,
        parse = TRUE
      ) 
    
    plots[[ingredient]] <- plot 
  }
  
  # Arrange plots in a grid
  ggarrange(plotlist = plots, nrow = nrows, ncol = ncols, common.legend = TRUE, legend = "bottom")
}

# Create plots for the first 9 ingredients
create_plots(ingredient_list1, 3, 3)

# Create plots for the remaining 9 ingredients
create_plots(ingredient_list2, 3, 3)

create_plots(ingredient_list3, 3, 3)


#GERAR GRAFICO DA ANALISE DE RISCO ###################################

GRAFICOS <- read_excel("C:/Users/xsimo/OneDrive/Documentos/09.R-TCC/TCC/R - TCC/Base de dados/GRAFICOS-1.xlsx")

library(tidyverse)
library(readxl)
library(ggplot2)

# Read the Excel file into a DataFrame
df <- GRAFICOS

# Filter the dataset for 'AMOXICILINA'
df_amoxicilina <- df %>%
  filter(PRINCIPIO_ATIVO_PRINCIPAL == "AMOXICILINA")

# Create the heatmap
ggplot(df_amoxicilina, aes(x = factor(ANO_VENDA), y = MUNICIPIO_VENDA, fill = `PEC (µg.L-1)`)) +
  geom_tile() +
  geom_text(aes(label = round(`PEC (µg.L-1)`, 2)), color = "black", size = 4) +  # Display PEC values
  scale_fill_gradient(low = "yellow", high = "red") +
  labs(title = "Heatmap of PEC for Amoxicilina by Year and City",
       x = "Ano", y = "Município", fill = "PEC (µg.L-1)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))


# Filter the dataset for 'AMOXICILINA'
df_CEFALEXINA <- df %>%
  filter(PRINCIPIO_ATIVO_PRINCIPAL == "CEFALEXINA")

# Create the heatmap
ggplot(df_CEFALEXINA, aes(x = factor(ANO_VENDA), y = MUNICIPIO_VENDA, fill = `PEC (µg.L-1)`)) +
  geom_tile() +
  geom_text(aes(label = round(`PEC (µg.L-1)`, 2)), color = "black", size = 3) +  # Display PEC values
  scale_fill_gradient(low = "yellow", high = "red") +
  labs(title = "mapa de calor para PEC da CEFALEXINA por ano e cidade",
       x = "Ano", y = "Município", fill = "PEC (µg.L-1)") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))



# Filter the dataset for 'AMOXICILINA'
df_METRONIDAZOL <- df %>%
  filter(PRINCIPIO_ATIVO_PRINCIPAL == "METRONIDAZOL")

# Create the heatmap
ggplot(df_CEFALEXINA, aes(x = factor(ANO_VENDA), y = MUNICIPIO_VENDA, fill = `PEC (µg.L-1)`)) +
  geom_tile() +
  geom_text(aes(label = round(`PEC (µg.L-1)`, 2)), color = "black", size = 3) +  # Display PEC values
  scale_fill_gradient(low = "yellow", high = "red") +
  labs(title = "mapa de calor para PEC do METRONIDAZOL por ano e cidade",
       x = "Ano", y = "Município", fill = "PEC (µg.L-1)") +
  theme_minimal() +  # Apply minimalist theme
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1, family = "sans"),  # Change font to sans-serif
    panel.grid = element_blank(),  # Remove gridlines
    axis.ticks = element_blank()   # Remove axis ticks
  )
#700 por 370
# Create the heatmap
ggplot(df_METRONIDAZOL, aes(x = factor(ANO_VENDA), y = MUNICIPIO_VENDA, fill = `PEC (µg.L-1)`)) +
  geom_tile() +
  geom_text(aes(label = round(`PEC (µg.L-1)`, 2)), color = "black", size = 3) +  # Display PEC values
  scale_fill_gradient(low = "yellow", high = "red") +
  labs(title = "Mapa de calor - CAP do metronidazol por ano e cidade",
       x = "Ano", y = "Município", fill = "CAP (µg.L-1)") +
  theme_minimal() +  # Apply minimalist theme
  theme(
    axis.text.x = element_text(angle = 45, hjust = 1, family = "sans"),  # Change font to sans-serif
    panel.grid = element_blank(),  # Remove gridlines
    axis.ticks = element_blank()   # Remove axis ticks
  )

#SALVAR BANCO DE DADOS COMO csv####

write.csv(ABSOLUTO, "C:/Users/Simao/Documentos/ABSOLUTO.csv", row.names = FALSE)


######## teste #############

for (municipio in municipios_top) {
  dados <- df %>% filter(MUNICIPIO_VENDA == municipio)
  plots <- list()
  
  for (modelo_nome in names(model_forms)) {
    formula <- model_forms[[modelo_nome]]
    modelo <- tryCatch(lm(formula, data = dados), error = function(e) NULL)
    if (is.null(modelo)) next
    
    # Previsões
    y_pred <- if (modelo_nome %in% c("exponencial", "potencial")) {
      exp(predict(modelo, newdata = dados))
    } else {
      predict(modelo, newdata = dados)
    }
    
    # Adicionar colunas manualmente
    dados_plot <- dados
    dados_plot$y_obs <- dados$MASSA_TOTAL_kg
    dados_plot$y_pred <- y_pred
    
    # Coletar métricas
    resumo <- summary(modelo)
    r2 <- round(resumo$r.squared, 3)
    p_valor <- round(resumo$coefficients[2, 4], 5)
    
    # Gerar plot com métricas no título
    plot <- ggplot(dados_plot, aes(x = ANO_VENDA)) +
      geom_point(aes(y = y_obs), color = "steelblue") +
      geom_line(aes(y = y_pred), color = "firebrick", linewidth = 1) +
      labs(
        title = paste0(municipio, " | ", modelo_nome,
                       "\nR² = ", r2, " | p = ", p_valor),
        x = "Ano da Venda",
        y = "Massa Total (kg)"
      ) +
      theme_pubr() +
      theme(plot.title = element_text(hjust = 0.5, size = 11))
    
    plots[[modelo_nome]] <- plot
  }
  
  # Mostrar plots comparativos para o município
  print(ggarrange(plotlist = plots, ncol = 3, nrow = 2, top = paste("Modelos de Tendência -", municipio)))
}



############ teste2 #####

# Carregar bibliotecas
library(ggplot2)
library(dplyr)
library(stringr)
library(RColorBrewer)  # Para paletas de cores

# Lista das capitais
capitais <- c(
  'RIO BRANCO', 'MACEIÓ', 'MACAPÁ', 'MANAUS', 'SALVADOR', 'FORTALEZA', 'BRASÍLIA', 'VITÓRIA', 'GOIÂNIA', 'SÃO LUÍS',
  'CUIABÁ', 'CAMPO GRANDE', 'BELO HORIZONTE', 'BELÉM', 'JOÃO PESSOA', 'CURITIBA', 'RECIFE', 'TERESINA',
  'RIO DE JANEIRO', 'NATAL', 'PORTO ALEGRE', 'PORTO VELHO', 'BOA VISTA', 'FLORIANÓPOLIS', 'SÃO PAULO',
  'ARACAJU', 'PALMAS'
)

# Agrupar os dados por ano, princípio ativo e município
dados_agrupados <- ABSOLUTO %>%
  group_by(ANO_VENDA, PRINCIPIO_ATIVO_PRINCIPAL, MUNICIPIO_VENDA) %>%
  summarise(MASSA_TOTAL_kg = sum(MASSA_TOTAL_kg, na.rm = TRUE), .groups = "drop")

# Ajustar ordem dos municípios
dados_agrupados$MUNICIPIO_VENDA <- factor(dados_agrupados$MUNICIPIO_VENDA, levels = capitais)

# Função para gerar gráficos por blocos de 6 (2x3)
gerar_graficos <- function(dados, capitais, n) {
  anos <- sort(unique(dados$ANO_VENDA))
  
  for (i in seq(1, length(capitais), by = n)) {
    capitais_bloco <- capitais[i:min(i + n - 1, length(capitais))]
    dados_bloco <- dados %>% filter(MUNICIPIO_VENDA %in% capitais_bloco)
    
    titulo <- str_wrap(
      paste("Vendas de Medicamentos Controlados por Ano nas Capitais:",
            paste(capitais_bloco, collapse = ", ")),
      width = 80
    )
    
    p <- ggplot(dados_bloco, aes(x = ANO_VENDA, y = MASSA_TOTAL_kg, fill = PRINCIPIO_ATIVO_PRINCIPAL)) +
      geom_bar(stat = "identity", position = "dodge", color = "black") +
      scale_fill_brewer(palette = "Set3") +  # ✅ Paleta com até 12 cores
      scale_x_continuous(breaks = anos) +
      facet_wrap(~ MUNICIPIO_VENDA, scales = "free_y", ncol = 3, nrow = 2) +  # ✅ Grade 2x3
      labs(
        title = titulo,
        x = "Ano da venda",
        y = "Massa Total Vendida (Kg)",
        fill = "Princípio Ativo"
      ) +
      theme_minimal(base_size = 10) +
      theme(
        plot.title = element_text(hjust = 0.5, size = 14),
        strip.text = element_text(size = 10),
        axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "bottom",
        legend.text = element_text(size = 9),
        legend.title = element_text(size = 10)
      )
    
    print(p)
  }
}

# Gerar os gráficos em blocos de 6 capitais (2 linhas x 3 colunas)
gerar_graficos(dados_agrupados, capitais, 6)

############# teste3 #########
# Carregar bibliotecas
library(ggplot2)
library(dplyr)
library(ggpubr)
library(ggpmisc)

# Base de dados
df <- municipio_ano

# Função auxiliar para calcular p-valor e coeficiente angular da regressão linear por município
get_regression_info <- function(municipio) {
  dados <- df %>% filter(MUNICIPIO_VENDA == municipio)
  modelo <- tryCatch(lm(MASSA_TOTAL_kg ~ ANO_VENDA, data = dados), error = function(e) return(NA))
  if (any(is.na(modelo))) return(NA)
  
  # Coletar o coeficiente angular (slope) e o valor de p
  coef_angular <- coef(modelo)[2]  # Coeficiente angular da reta de regressão
  p_value <- summary(modelo)$coefficients[2, 4]  # p-valor da variável ANO_VENDA
  
  # Calcular o aumento percentual anual (coeficiente angular sobre o valor inicial)
  valor_inicial <- dados %>% filter(ANO_VENDA == min(dados$ANO_VENDA)) %>% pull(MASSA_TOTAL_kg)
  aumento_percentual_anual <- (coef_angular / valor_inicial) * 100
  
  return(c(coef_angular, p_value, aumento_percentual_anual))
}

# Calcular os coeficientes angulares, p-valores e aumentos percentuais
municipios <- unique(df$MUNICIPIO_VENDA)
regression_info <- t(sapply(municipios, get_regression_info))

# Organizar os resultados em um data frame
resultado_regressao <- data.frame(
  MUNICIPIO = municipios,
  Coeficiente_Angular = regression_info[, 1],
  p_value = regression_info[, 2],
  Aumento_Percentual_Anual = regression_info[, 3]
)

# Exibir a tabela final com os resultados
print(resultado_regressao)
