# Avaliação da Capacidade de LLMs na Geração de User Stories: Um Estudo Comparativo com o Framework QUS

Repositório de reprodutibilidade do trabalho final da disciplina de Engenharia de Software III.

## Objetivo
Breve resumo (2-3 linhas) do objetivo do trabalho — pode copiar direto do seu Objetivo Geral.

## Estrutura do repositório
- `input/` — descrições de sistemas extraídas do dataset TAWOS e o prompt utilizado.
- `outputs/` — histórias de usuário geradas por cada LLM (Claude, DeepSeek, Gemini), uma pasta por modelo.
- `aqusa-reports/` — relatórios HTML gerados pela ferramenta AQUSA-core para cada conjunto de histórias.
- `results/` — planilha consolidada com a categorização dos defeitos (Defect kind, Subkind, Message).
- `paper/` — artigo final em PDF.

## Como reproduzir
1. Clone o repositório oficial do AQUSA-core: https://github.com/RELabUU/aqusa-core
2. Copie os arquivos de `outputs/<modelo>/` para a pasta `input/` do AQUSA-core.
3. Execute: `python aqusacore.py -i <arquivo>.txt -o <nome_saida> -f html`
4. Compare o relatório gerado com os arquivos já presentes em `aqusa-reports/`.

## Fontes de dados
- Dataset TAWOS: https://github.com/SOLAR-group/TAWOS
- Ferramenta AQUSA-core: https://github.com/RELabUU/aqusa-core
- Framework QUS: LUCASSEN, G. et al. Improving Agile Requirements: The Quality 
  User Story Framework and Tool. Requirements Engineering, 2016.

## Autor
Diego Araújo Teixeira — IF Sudeste MG, Campus Manhuaçu
