# 📊 Sakila Business Intelligence

Projeto de **Análise de Dados e Business Intelligence** desenvolvido utilizando o banco de dados **Sakila**, com **MySQL** para exploração e análise dos dados e **Power BI** para criação do dashboard e visualização dos indicadores.

O objetivo do projeto é transformar dados de locações de filmes em informações úteis para análise de **faturamento, comportamento de clientes, desempenho dos filmes e evolução das locações ao longo do tempo**.

---

## 🎯 Objetivo do Projeto

Realizar uma análise exploratória dos dados do Sakila e construir uma solução de Business Intelligence capaz de responder perguntas como:

* Qual é o faturamento total da empresa?
* Como o faturamento evolui ao longo dos meses?
* Qual é a quantidade de locações realizadas?
* Qual é o ticket médio?
* Quais filmes possuem maior quantidade de locações?
* Quais filmes geram maior faturamento?
* Quais clientes apresentam maior movimentação?
* Como os resultados se distribuem entre diferentes localidades?

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia      | Utilização                               |
| --------------- | ---------------------------------------- |
| 🗄️ **MySQL**   | Consulta, exploração e análise dos dados |
| 📊 **Power BI** | Dashboard e visualização dos indicadores |
| 🔎 **SQL**      | JOINs, agregações, filtros e análises    |
| 📐 **DAX**      | Criação de medidas e indicadores         |
| 📁 **GitHub**   | Versionamento e documentação do projeto  |

---

## 🗄️ Banco de Dados

O projeto utiliza o banco de dados **Sakila**, um banco de dados de exemplo baseado em uma empresa fictícia de locação de filmes.

Entre as principais tabelas utilizadas estão:

* `film`
* `inventory`
* `rental`
* `payment`
* `customer`
* `address`
* `city`
* `category`

Através dos relacionamentos entre essas tabelas foi possível conectar informações de filmes, locações, pagamentos, clientes e localidades.

---

## 🔎 Análises Realizadas com SQL

Foram utilizadas consultas SQL para extrair os principais indicadores do negócio.

### Principais análises

**Faturamento**

* Faturamento total
* Faturamento mensal
* Faturamento por filme

**Locações**

* Quantidade total de locações
* Filmes mais alugados
* Evolução das locações

**Clientes**

* Clientes com maior movimentação
* Distribuição dos clientes por localização

**Indicadores**

* Receita total
* Quantidade de locações
* Ticket médio
* Ranking de filmes

Durante a análise foram utilizados recursos como:

```sql
SELECT
COUNT()
SUM()
AVG()
GROUP BY
ORDER BY
WHERE
HAVING
INNER JOIN
LEFT JOIN
DATE_FORMAT()
```

---

## 📊 Dashboard Power BI

O resultado das análises foi utilizado para construir um dashboard no Power BI, permitindo visualizar os principais indicadores de forma centralizada.

### Principais indicadores

* 💰 **Faturamento Total:** $67.416,51
* 🎬 **Quantidade de Locações**
* 💵 **Ticket Médio:** $4,20
* 📈 **Evolução do Faturamento**
* 🏆 **Top Filmes por Locações**
* 💰 **Top Filmes por Faturamento**

### Dashboard

![Dashboard Sakila Business Intelligence](Imagens/dashboard.png)

---

## 🧠 Principais Aprendizados

Este projeto permitiu praticar conceitos importantes de análise de dados, incluindo:

* Manipulação e exploração de bancos relacionais
* Construção de consultas SQL
* Utilização de diferentes tipos de `JOIN`
* Agregação e agrupamento de dados
* Análise temporal
* Criação de indicadores
* Modelagem de dados para Power BI
* Criação de medidas utilizando DAX
* Desenvolvimento de dashboards para apoio à tomada de decisão
* Organização e documentação de projetos de dados

---

## 📁 Estrutura do Projeto

```text
sakila-business-intelligence/
│
├── SQL/
│   └── analise_sakila.sql
│
├── PowerBI/
│   └── Sakila_Business_Intelligence.pbix
│
├── Imagens/
│   └── dashboard.png
│
└── README.md
```

---

## 📌 Conclusão

O projeto demonstra o processo completo de uma análise de dados, desde a **extração e exploração dos dados utilizando SQL**, passando pela **construção dos indicadores**, até a **visualização das informações em um dashboard no Power BI**.

A proposta foi transformar dados brutos em informações capazes de facilitar a interpretação do desempenho do negócio e apoiar a tomada de decisões baseada em dados.

---

### 👨‍💻 Projeto desenvolvido por Henrique

**Data Analytics | SQL | MySQL | Power BI | Python | Pandas**
