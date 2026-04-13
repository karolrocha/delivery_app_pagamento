# BDD Guidelines

## Objetivo
Padronizar escrita de cenarios para testes confiaveis, legiveis e executaveis.

## Formato obrigatorio
- `Given`: contexto inicial observavel
- `When`: uma acao unica
- `Then`: resultado observavel para usuario/sistema

## Regras obrigatorias
- Um comportamento por scenario
- Linguagem de negocio, sem detalhe tecnico interno
- Nome do scenario deve descrever resultado esperado
- `Then` deve validar estado, resposta ou erro claro

## Bom exemplo
Scenario: atribuir entregador automaticamente
Given uma ordem pendente na regiao "Zona Sul"
And um entregador disponivel na regiao "Zona Sul"
When a atribuicao automatica for solicitada para a ordem
Then a ordem deve ser marcada como "IN_DELIVERY"
And o entregador deve ser marcado como "OCCUPIED"

## Mau exemplo
Scenario: testar metodo assign
Given um mock de repositorio
When chamar assign
Then metodo interno foi chamado

Problemas do exemplo ruim:
- Foca em implementacao interna
- Nao representa comportamento de negocio

## Checklist antes de abrir PR
- Cenarios cobrem caminho feliz e erro principal
- Todos os steps sao reaproveitaveis
- Cenario falha sem implementacao e passa com implementacao
- Nome dos steps segue linguagem de negocio
