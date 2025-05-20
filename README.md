# README: Análise Não Supervisionada das Séries Temporais de COVID-19 no Brasil  

**Trabalho de Conclusão de Curso (TCC)**  
**Autor:** João Lucas Simon  
**Orientador:** Prof. Dr. Marcio Valk  
**Instituição:** Universidade Federal do Rio Grande do Sul (UFRGS)  
**Data:** Agosto de 2024  

---

## 📌 **Resumo do Projeto**  
Este estudo analisa a evolução da COVID-19 em municípios brasileiros com mais de 100 mil habitantes entre 2020 e 2022, utilizando técnicas de **agrupamento de séries temporais** (Dynamic Time Warping - DTW) e métodos estatísticos não supervisionados. O objetivo foi identificar padrões de casos e óbitos e sua relação com fatores socioeconômicos (IDHM, pobreza) e políticos (votação em 2018).  

**Principais resultados:**  
- Identificação de **clusters distintos** na evolução da pandemia.  
- Associação significativa entre mortalidade, baixo IDHM e partidarismo político.  
- Contribuição para políticas públicas baseadas em dados.  

---

## 🔧 **Tecnologias e Ferramentas**  
- **Linguagens:** R (principal), Python (opcional para visualizações)  
- **Pacotes R:**  
  - `dtwclust` (agrupamento de séries temporais)  
  - `tidyverse` (manipulação de dados)  
  - `ggstatsplot` (testes estatísticos e gráficos)  
- **Fontes de Dados:**  
  - [Brasil.IO](https://brasil.io/) (casos/óbitos de COVID-19)  
  - [Atlas Brasil](https://www.atlasbrasil.org.br/) (IDHM)  
  - [TSE](https://www.tse.jus.br/) (dados eleitorais)  

---

## 📊 **Principais Resultados**  
- **Agrupamento de Casos:** 6 clusters com padrões temporais distintos (ex.: picos prematuros vs. evolução lenta).  
- **Agrupamento de Óbitos:** 5 clusters, com diferenças significativas em IDHM e votação (teste de Dunn, *p* < 0.05).  
- **Correlações:**  
  - Municípios com menor IDHM tiveram maior mortalidade.  
  - Votação em Bolsonaro (2018) associada a clusters com picos tardios.  

---

## 📜 **Citação**  
Se usar este trabalho, cite:  
```bibtex
@thesis{simon2024covid,
  author = {João Lucas Simon},
  title = {Análise Não Supervisionada das Séries Temporais de COVID-19 nos Municípios Brasileiros},
  year = {2024},
  school = {Universidade Federal do Rio Grande do Sul}
}
```

---

## 🤝 **Contribuições e Contato**  
- **Issues:** Sinta-se à vontade para abrir *issues* no GitHub com dúvidas ou sugestões.  
- **Contato:** [joao.simon@email.com] (substitua pelo seu e-mail).  

--- 
 

🔍 **Dúvidas?** Consulte o PDF do TCC ou a pasta `/docs/` para detalhes metodológicos!
