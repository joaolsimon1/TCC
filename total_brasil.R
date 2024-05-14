setwd("C:/Users/joao_/Documents/TCC/")


# Importando os dados diarios
dados_temporais20 <- read.csv("cases-brazil-cities-time_2020.csv")
dados_temporais21 <- read.csv("cases-brazil-cities-time_2021.csv")
dados_temporais22 <- read.csv("cases-brazil-cities-time_2022.csv")

# Juntando os 3 anos em um unico dataset
dados_temporais <- rbind(dados_temporais20, dados_temporais21, dados_temporais22)

# Removendo do environment os anos separados para liberar memoria
rm(dados_temporais20)
rm(dados_temporais21)
rm(dados_temporais22)

library(tidyverse)

# Removendo as linhas de TOTAIS  e os Casos sem localização definida
dados_temporais <- dados_temporais %>%
                      filter(grepl("TOTAL", city), !grepl("CASO SEM L", city))


dados_semanais <- dados_temporais %>% 
                    group_by(date) %>% 
                    summarise("newCases" = sum(newCases),
                              "newDeaths" = sum(newDeaths))

dados_semanais$epi_week <- c(9:157) 


# Gráfico usando ggplot2
ggplot(dados_temporais, aes(x = date)) +
  geom_line(aes(y = newCases, color = "Série 1")) +
  geom_line(aes(y = newDeaths, color = "Série 2")) +
  labs(x = "Tempo", y = "Valor", color = "Séries") +
  scale_color_manual(values = c("Série 1" = "blue", "Série 2" = "red")) +
  theme_minimal()



library(ggplot2)

# Convertendo a coluna 'date' para o formato de data
dados_temporais$date <- as.Date(dados_temporais$date)

# Gráfico usando ggplot2
library(ggplot2)
library(scales)


# Gráfico usando ggplot2
ggplot(dados_semanais, aes(x = date)) +
  geom_line(aes(y = newCases /10000, color = "Novos Casos")) +
  geom_line(aes(y = newDeaths /1000, color = "Novos Óbitos")) +
  labs(x = "Tempo", y = "", color = "Séries") +
  scale_color_manual(values = c("Novos Casos" = "#4247DB", "Novos Óbitos" = "#DC3939")) +
  # Adicionando segundo eixo y
  scale_y_continuous(
    name = bquote("Casos " * ( 10^4)),
    sec.axis = sec_axis(~. /7, name = bquote("Óbitos " * ( 10^3)), labels = comma),
    labels = scales::comma
  ) +
  theme_minimal() +
  theme(legend.position = c(0.2, 0.8),
        legend.title = element_text(size = 10))


ggsave("total_brasil.png", height = 2)











  
  

















