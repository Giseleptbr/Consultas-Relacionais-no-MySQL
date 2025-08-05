# Projeto: Consultas Relacionais no Banco de Dados Filmes

## Contexto

Este projeto foi desenvolvido inicialmente para ser executado no Microsoft SQL Server, conforme proposto no desafio da trilha .NET da DIO. Contudo, devido à compatibilidade do SQL Server ser limitada ao sistema operacional Windows, e considerando que estou utilizando macOS, houve a necessidade de adaptar o projeto para outro sistema gerenciador de banco de dados.

## Ajustes realizados

- A base de dados foi migrada para o **MySQL**, utilizando o **MySQL Workbench** como interface de gerenciamento.
- O script original, que estava em sintaxe SQL Server, foi convertido para a sintaxe compatível com MySQL, incluindo:
  - Substituição do tipo `IDENTITY` por `AUTO_INCREMENT`.
  - Remoção de comandos específicos do SQL Server (`SET ANSI_NULLS`, `SET QUOTED_IDENTIFIER`, etc.).
  - Ajuste na sintaxe de criação de tabelas, chaves primárias e estrangeiras.
  - Adequação das inserções de dados para o formato MySQL.
- As consultas SQL foram mantidas no padrão ANSI SQL, funcionando tanto no MySQL quanto no SQL Server, com pequenas adaptações de nomes de colunas conforme necessário.
- 
## Demonstração da criação das tabelas

![Criação das Tabelas no MySQL](./CREATE_TABLE_MySql_Filmes.png)

## Exemplos de consultas realizadas

![Exemplo de Consulta no MySQL Workbench](./Consulta_MySQL_filmes.png)

## Como executar

1. Abra o MySQL Workbench e conecte-se ao seu servidor MySQL local.
2. Crie um novo banco de dados (schema) chamado `Filmes`.
3. Execute o script adaptado fornecido na pasta `scripts` para criar as tabelas e popular os dados.
4. Utilize as queries fornecidas para realizar as consultas solicitadas no desafio.

## Consultas realizadas

As consultas contemplam os seguintes objetivos:

- Buscar nome e ano dos filmes.
- Ordenar filmes por ano.
- Consultar filmes por nome, ano, duração.
- Filtrar filmes por critérios de lançamento e duração.
- Listar atores por gênero.
- Relacionar filmes com seus gêneros e atores.
- Entre outras demandas conforme o enunciado do desafio.
