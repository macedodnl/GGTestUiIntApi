#language:pt
#encoding: utf-8

@Front @Grade @Manter_Estrutura_Breaks
Funcionalidade: PBAS

  Como usuário do Opec
  Quero manter os breaks de um programa
  Para manter a sua estrutura atualizada conforme a necessidade da equipe de OPEC e Marketing
  E envia-la para a Central de Exibição (CE)

  Contexto:
    Dado que eu esteja logado no Siscom
    E possua permissão de acesso ao PBAS
    E <Nome do Programa>  conste na Programação do dia <Data>

  Esquema do Cenário: Reduzir número de Breaks de um programa
    Quando acesso Entrega → Programação → Grade de Programação Básica
    E seleciono <Data>
    E em abrangência informo <Canal>
    E aciono Ok
    E seleciono <Canal>
    E aciono Pesquisar
    E na grade aciono Editar referente ao <Programa>
    E seleciono o Break desejado
    E aciono Excluir
    E informo em Aplicada a partir de <Data inicial> até <Data final>
    E aciono Salvar breaks
    Então é exibida mensagem de alteração realizada com sucesso
    Exemplos:
      | Mnemônico de Programa | Programa | Data | Canal | Rede | Abrangência | Canal/Exibidora | Data inicial | Data final |
      | MISA | SANTA MISSA | 06/11/2020 | TV ABERTA | NAC | NAC | RJ | 06/11/2020 | 06/11/2020 |
#      | PTV1 | JORNAL | 06/11/2020 | TV ABERTA | NAC | NAC | SP1 | 06/11/2020 | 06/11/2020 |
#      | 1MALT | MALHAÇÃO | 07/11/2020 | Canal América | GIA | GN1 | GN1 | 07/11/2020 | 07/11/2020 |
#      | 2MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN2 | GN2 | 07/11/2020 | 07/11/2020 |
#      | 4MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN4 | GN4 | 07/11/2020 | 07/11/2020 |
#      | 5MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN5 | GN5 | 07/11/2020 | 07/11/2020 |
#      | 8MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN8 | GN8 | 07/11/2020 | 07/11/2020 |

#    Critério de Aceite:
#      Realizar processo de exclusão de break na PBAS;
#      Realizar o envio dos dados atualizados dos breaks para a Central de Exibição;

  Esquema do Cenário: Aumentar número de Breaks de um programa
    Quando acesso Entrega → Programação → Grade de Programação Básica
    E seleciono <Data>
    E em abrangência informo <Canal>
    E aciono Ok
    E seleciono <Canal>
    E aciono Pesquisar
    E na grade aciono Editar referente ao <Programa>
    E em Breaks aciono Incluir
    E informo para esse novo Break <Hora>, <Tempo>
    E informo em Aplicada a partir de <Data inicial> até <Data final>
    E aciono Salvar breaks
    Então é exibida mensagem de alteração realizada com sucesso
    Exemplos:
      | Mnemônico de Programa | Programa | Data | Canal | Rede | Abrangência | Canal/Exibidora | HORA | Tempo | Data inicial | Data final |
      | 6MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN6 | GN6 | 16:10| 120 | 07/11/2020 | 07/11/2020 |
#      | JNAS | JORNAL NACIONAL| 07/11/2020 | TV ABERTA | NAC | NAC | NAC |20:10|120|07/11/2020|07/11/2020 |
#      | PTV2 | SANTA MISSA | 06/11/2020 | TV ABERTA | NAC | NAC | RJ | 08:10 | 120 | 06/11/2020 | 06/11/2020 |
#      | PTV1 | JORNAL | 06/11/2020 | TV ABERTA | NAC | NAC | SP1 | 08:10 | 120 | 06/11/2020 | 06/11/2020 |
#      | 1MALT | MALHAÇÃO | 07/11/2020 | Canal América | GIA | GN1 | GN1 |16:10| 120 | 07/11/2020 | 07/11/2020 |
#      | 2MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN2 | GN2 | 16:10| 120 | 07/11/2020 | 07/11/2020 |
#      | 4MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN4 | GN4 | 16:10| 120 | 07/11/2020 | 07/11/2020 |
#      | 5MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN5 | GN5 | 16:10| 120 | 07/11/2020 | 07/11/2020 |
#      | 8MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN8 | GN8 | 16:10| 120 | 07/11/2020 | 07/11/2020 |



#  Critério de Aceite:
#   Realizar processo de inclusão de break;
#   Realizar o envio dos dados atualizados dos breaks para a Central de Exibição;


  Esquema do Cenário: Aumentar duração de Break de um programa
    Quando acesso Entrega → Programação → Grade de Programação Básica
    E seleciono <Data>
    E em abrangência informo <Canal>
    E aciono Ok
    E seleciono <Canal>
    E aciono Pesquisar
    E na grade aciono Editar referente ao <Programa>
    E em Breaks altero para mais o <Tempo> (Duração) de um Break
    E informo em Aplicada a partir de <Data inicial> até <Data final>
    E aciono Salvar breaks
    Então é exibida mensagem de alteração realizada com sucesso
    Exemplos:
      |Mnemônico de Programa | Programa | Data | Canal | Rede | Abrangência | Canal/Exibidora | HORA | Tempo | Data inicial | Data final |
      | 6MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN6 | GN6 | 16:10| 150 | 07/11/2020 | 07/11/2020 |
#      | JNAS | JORNAL NACIONAL| 07/11/2020 | TV ABERTA | NAC | NAC | NAC |20:10|150|07/11/2020|07/11/2020 |
#      | PTV2 | SANTA MISSA | 06/11/2020 | TV ABERTA | NAC | NAC | RJ | 08:10 | 150 | 06/11/2020 | 06/11/2020 |
#      | PTV1 | JORNAL | 06/11/2020 | TV ABERTA | NAC | NAC | SP1 | 08:10 | 150 | 06/11/2020 | 06/11/2020 |
#      | 1MALT | MALHAÇÃO | 07/11/2020 | Canal América | GIA | GN1 | GN1 |16:10| 150 | 07/11/2020 | 07/11/2020 |
#      | 2MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN2 | GN2 | 16:10| 150 | 07/11/2020 | 07/11/2020 |
#      | 4MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN4 | GN4 | 16:10| 150 | 07/11/2020 | 07/11/2020 |
#      | 5MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN5 | GN5 | 16:10| 150 | 07/11/2020 | 07/11/2020 |
#      | 8MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN8 | GN8 | 16:10| 150 | 07/11/2020 | 07/11/2020 |

#  Critério de Aceite:
#    Realizar processo de atualização de tempo de break na PBAS;
#    Realizar o envio dos dados atualizados dos breaks para a Central de Exibição;



  Esquema do Cenário: Diminuir duração de Break de um programa
    Quando acesso Entrega → Programação → Grade de Programação Básica
    E seleciono <Data>
    E em abrangência informo <Canal>
    E aciono Ok
    E seleciono <Canal>
    E aciono Pesquisar
    E na grade aciono Editar referente ao <Programa>
    E em Breaks altero para menos o <Tempo> (Duração) de um Break
    E informo em Aplicada a partir de <Data inicial> até <Data final>
    E aciono Salvar breaks
    Então é exibida mensagem de alteração realizada com sucesso
    Exemplos:
      |Mnemônico de Programa | Programa | Data | Canal | Rede | Abrangência | Canal/Exibidora | HORA | Tempo | Data inicial | Data final |
      | 6MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN6 | GN6 | 16:10| 90 | 07/11/2020 | 07/11/2020 |
#      | JNAS | JORNAL NACIONAL| 07/11/2020 | TV ABERTA | NAC | NAC | NAC |20:10|90|07/11/2020|07/11/2020 |
#      | PTV2 | SANTA MISSA | 06/11/2020 | TV ABERTA | NAC | NAC | RJ | 08:10 | 90 | 06/11/2020 | 06/11/2020 |
#      | PTV1 | JORNAL | 06/11/2020 | TV ABERTA | NAC | NAC | SP1 | 08:10 | 90 | 06/11/2020 | 06/11/2020 |
#      | 1MALT | MALHAÇÃO | 07/11/2020 | Canal América | GIA | GN1 | GN1 |16:10| 90 | 07/11/2020 | 07/11/2020 |
#      | 2MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN2 | GN2 | 16:10| 90 | 07/11/2020 | 07/11/2020 |
#      | 4MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN4 | GN4 | 16:10| 90 | 07/11/2020 | 07/11/2020 |
#      | 5MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN5 | GN5 | 16:10| 90 | 07/11/2020 | 07/11/2020 |
#      | 8MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN8 | GN8 | 16:10| 90 | 07/11/2020 | 07/11/2020 |



#  Critério de Aceite:
#    Realizar processo de atualização de tempo de break na PBAS;
#    Realizar o envio dos dados atualizados dos breaks para a Central de Exibição;



  Esquema do Cenário: Alterar Horário de Break de um programa
    Quando acesso Entrega → Programação → Grade de Programação Básica
    E seleciono <Data>
    E em abrangência informo <Canal>
    E aciono Ok
    E seleciono <Canal>
    E aciono Pesquisar
    E na grade aciono Editar referente ao <Programa>
    E em Breaks altero a <Hora> de um Break
    E informo em Aplicada a partir de <Data inicial> até <Data final>
    E aciono Salvar breaks
    Então é exibida mensagem de alteração realizada com sucesso
    Exemplos:
      |Mnemônico de Programa | Programa | Data | Canal | Rede | Abrangência | Canal/Exibidora | HORA | Tempo | Data inicial | Data final |
      | 6MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN6 | GN6 | 16:20| 150 | 07/11/2020 | 07/11/2020 |
#      | JNAS | JORNAL NACIONAL| 07/11/2020 | TV ABERTA | NAC | NAC | NAC |20:20|150|07/11/2020|07/11/2020 |
#      | PTV2 | SANTA MISSA | 06/11/2020 | TV ABERTA | NAC | NAC | RJ | 08:20 | 150 | 06/11/2020 | 06/11/2020 |
#      | PTV1 | JORNAL | 06/11/2020 | TV ABERTA | NAC | NAC | SP1 | 08:20 | 150 | 06/11/2020 | 06/11/2020 |
#      | 1MALT | MALHAÇÃO | 07/11/2020 | Canal América | GIA | GN1 | GN1 |16:20| 150 | 07/11/2020 | 07/11/2020 |
#      | 2MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN2 | GN2 | 16:20| 150 | 07/11/2020 | 07/11/2020 |
#      | 4MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN4 | GN4 | 16:20| 150 | 07/11/2020 | 07/11/2020 |
#      | 5MALT | MALHAÇÃO | 07/11/2020 | Canal Europa | EUR | GN5 | GN5 | 16:20| 150 | 07/11/2020 | 07/11/2020 |
#      | 8MALT | MALHAÇÃO | 07/11/2020 | Canal África B | AFR | GN8 | GN8 | 16:20| 150 | 07/11/2020 | 07/11/2020 |


#  Critério de Aceite:
#    Realizar processo de atualização de tempo de break na PBAS;
#    Realizar o envio dos dados atualizados dos breaks para a Central de Exibição;