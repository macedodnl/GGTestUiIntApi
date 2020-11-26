#language:pt
#encoding: utf-8

@Front @Grade @Manter_Periodicidade
Funcionalidade: PBAS

  Como usuário do Opec
  Quero manter a periodicidade do Programa na PBAS
  Para manter a Programação com os Programas atualizados conforme a necessidade da equipe de OPEC e Marketing
  E enviá-la para a Central de Exibição (CE)

  Contexto:
    Dado que eu esteja logado no Siscom
    E possua permissão de acesso ao PBAS

  Esquema do Cenário: Incluir Programa na Programação de 5 dias na PBAS
    Quando acesso Entrega → Programação → Grade de Programação Básica
    E na grade aciono Incluir Programa
    E informo <Mnemônico do Programa>
    E aciono Pesquisar
    E aciono <Mnemônico do Programa>
    E seleciono <Data>
    E em abrangência informo <Canal>
    E informo <Rede>
    E informo <Abrangência>
    E aciono Ok
    E seleciono <Canal/Exibidora>
    E aciono Pesquisar
    E em Breaks informo <Nº de Breaks>
    E aciono Sugerir breaks
    E informo <Tempo> para ambos breaks inseridos
    E informo em Aplicada a partir de <Data inicial> até <Data final>
    E aciono Salvar ambos
    Então é exibida mensagem de alteração realizada com sucesso
    Exemplos:
      | Mnemônico de Programa | Programa | Data | Canal | Rede | Abrangência | Canal/Exibidora | Nº de Breaks | Tempo | Data inicial | Data final |
      | 6MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN6 | GN6 | 2 | 120 | 15/12/2020 | 19/12/2020 |
#      | JNAS | JORNAL NACIONAL| 07/11/2020 | TV ABERTA | NAC | NAC | NAC | 2 | 120 | 15/12/2020 | 19/12/2020 |
#      | MISA | SANTA MISSA | 06/11/2020 | TV ABERTA | NAC | NAC | RJ | 0 | - | 15/12/2020 | 19/12/2020 |
#      | PTV1 | JORNAL | 06/11/2020 | TV ABERTA | NAC | NAC | SP1 | 0 | - | 15/12/2020 | 19/12/2020 |
#      | 1MALT | MALHAÇÃO | 07/11/2020 | Canal América | GIA | GN1 | GN1 | 2 | 120 | 15/12/2020 | 19/12/2020 |
#      | 2MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN2 | GN2 | 2 | 120 | 15/12/2020 | 19/12/2020 |
#      | 4MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN4 | GN4 | 2 | 120 | 15/12/2020 | 19/12/2020 |
#      | 5MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN5 | GN5 | 2 | 120 | 15/12/2020 | 19/12/2020 |
#      | 8MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN8 | GN8 | 2 | 120 | 15/12/2020 | 19/12/2020 |


#     Critério de Aceite:
#     Realizar processo de inclusão de Programa na Programação dos dias <Data inicial> até <Data final> na PBAS;
#     Realizar o envio dos dados atualizados para a Central de Exibição dos dias <Data inicial> até <Data final>;
#     Realizar o envio dos dados do <Programa> para a Central de Exibição dos dias <Data inicial> até <Data final>.