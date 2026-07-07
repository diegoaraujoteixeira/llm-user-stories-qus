# Avaliação da Capacidade de LLMs na Geração de User Stories: Um Estudo Comparativo com o Framework QUS

Repositório de reprodutibilidade do trabalho final da disciplina de Engenharia de Software III.

## Objetivo
Breve resumo (2-3 linhas) do objetivo do trabalho — pode copiar direto do seu Objetivo Geral.

## Estrutura do repositório
- `input/` — descrições de sistemas extraídas do dataset TAWOS e o prompt utilizado.
- `outputs/` — histórias de usuário geradas por cada LLM (Claude, DeepSeek, Gemini), uma pasta por modelo.
- `aqusa-reports/` — relatórios HTML gerados pela ferramenta AQUSA-core para cada conjunto de histórias.
- `resultados/` — planilha consolidada com a categorização dos defeitos (Defect kind, Subkind, Message).
- `artigo/` — artigo final em PDF.

## Como reproduzir
1. Importe o dataset TAWOS em um banco MySQL local (instruções no repositório oficial: https://github.com/SOLAR-group/TAWOS).
2. Execute a query em `input/extract_descriptions.sql` para extrair as 20 descrições usadas como entrada.
3. Para cada descrição, preencha o template em `input/prompt_template.txt` e envie ao LLM desejado.
4. Copie a saída da LLM para `outputs/<modelo>/hX_<modelo>.txt`.
5. Clone o AQUSA-core (https://github.com/RELabUU/aqusa-core) e rode `python aqusacore.py -i <arquivo>.txt -o <nome_saida> -f html`.
6. Compare com os relatórios já disponíveis em `aqusa-reports/`.

## Fontes de dados
- Dataset TAWOS: https://github.com/SOLAR-group/TAWOS
- Ferramenta AQUSA-core: https://github.com/RELabUU/aqusa-core
- Framework QUS: LUCASSEN, G. et al. Improving Agile Requirements: The Quality 
  User Story Framework and Tool. Requirements Engineering, 2016.

## Autor
Diego Araújo Teixeira — IF Sudeste MG, Campus Manhuaçu
