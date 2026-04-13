# Design System Source of Truth

## Objetivo
Garantir consistencia visual simples, clara e rapida para evolucao por time e AI.

## Principios
- Clareza primeiro
- Uma acao principal por tela
- Feedback visual imediato
- Mobile-first
- Reuso de componentes

## Cores oficiais
- Primary action: `#22C55E`
- Secondary action: `#3B82F6`
- Background: `#FFFFFF`
- Surface: `#F9FAFB`
- Texto principal: `#111827`
- Texto secundario: `#6B7280`

## Cores de status
- AVAILABLE: verde
- OCCUPIED: amarelo
- OFFLINE: cinza
- ERROR: vermelho

## Componentes base obrigatorios
- `Button`: variante primary (verde), secondary, ghost
- `Card`: superficie para item de lista
- `Badge`: status visual de entregador

## Regras de layout
- Espacamento base: 8px
- Borda de card: 12px
- Botao primario sempre verde
- Lista em cards com status e acao
- Empty state com mensagem clara

## Comportamento de UX
- Loading: indicador simples e texto
- Erro: mensagem objetiva + opcao de tentar novamente
- Sucesso: resultado visivel apos acao
