# Architecture Source of Truth

## Objetivo
Este documento define como o backend deve ser evoluido sem quebrar o padrao atual.

## Estilo arquitetural
- Hexagonal + Clean Architecture
- Feature-first no dominio `delivery`
- Controllers sem regra de negocio
- Services com regras de aplicacao
- Repositories como ports/adapters

## Estrutura oficial
- `delivery/domain/`: entidades, enums e contratos de repositorio
- `delivery/application/`: casos de uso e regras de negocio
- `delivery/infrastructure/`: implementacoes Django ORM
- `delivery/http/`: entrada HTTP (controllers e rotas)
- `delivery/wires.py`: injecao de dependencia

## Fluxo padrao
HTTP Request -> Controller -> Service -> Repository Port -> Repository Adapter -> PostgreSQL

## Regras de evolucao
- Toda regra de negocio vai para `application/services.py`
- Toda persistencia vai para `infrastructure/repositories.py`
- Toda validacao de payload HTTP fica em `http/views.py`
- Toda nova rota deve chamar apenas service

## Como criar nova feature
1. Criar entidades e enums em `domain`
2. Definir contratos de repositorio em `domain/ports.py`
3. Implementar caso de uso em `application/services.py`
4. Implementar adapters em `infrastructure/repositories.py`
5. Criar endpoint em `http/views.py` e rota em `http/urls.py`
6. Registrar dependencias em `wires.py`
7. Escrever cenarios BDD antes de ajustar implementacao

## Convencoes
- Arquivos: `snake_case.py`
- Funcoes de service: verbo + alvo (`assign_deliverer`, `reassign_deliverer`)
- Endpoints colecao: `/api/resource/`
- Endpoints acao: `/api/resource/{id}/action/`
