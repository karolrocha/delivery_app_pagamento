Funcionalidade: Edição de Informações do Restaurante
  Como proprietário de um restaurante
  Quero poder editar informações do meu perfil
  Para manter os dados do meu estabelecimento atualizados

Scenario: Edição de informações permitidas
    Given que estou na página de perfil do restaurante “Gosto bom”
    And sou o proprietário do restaurante “Gosto bom”
    When eu altero o endereço e o horário de funcionamento
    Then as novas informações são salvas no banco de dados
    Then novo then para os stakeholders!!!