#language:pt
#encoding: utf-8

@Front @Grade @Enviar_Grade_Incluindo_Programa
Funcionalidade: PBAS

  Como usuário do Opec

  Quero conciliar o Grade com o IBMS incluindo Programa

  Para conciliá-lo com o IBMS e atualizar a Central de Exibição com os dados da PBAS e Conciliação (origem IBMS)



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Conciliação

    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação

    E grade possua <Nome do Programa> que não conste na Programação do dia (PBAS) do Siscom



  Esquema do Cenário: Consultar Conciliação da Grade com divergência de Programa

    Quando acesso http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    E pesquiso por <Canal>

    E pesquiso por <Data>

    E expando grade

    Então para o <Programa> é exibido o Status “Programa não encontrado”



#  Critério de Aceite:
#
#  Exibir divergência Status “Programa não encontrado”

    Exemplos:

      | Canal | Data           | Programa |

      | GN6   | 06/11/2020 | 6MALT       |

#      | RED    | 06/11/2020 | TARA         |
#
#      | RJ       | 06/11/2020 | TARA         |
#
#      | GN1   | 06/11/2020 | 1MALT       |
#
#      | GN2   | 06/11/2020 | 2MALT       |
#
#      | GN5   | 06/11/2020 | 5MALT       |
#
#      | GN8   | 06/11/2020 | 8MALT       |


#  Contexto:
#
#    Dado que eu esteja logado no Siscom
#
#    E possua permissão de acesso ao Conciliação
#
#    Dado que tenha executado na PBAS o Cenário: Incluir Programa na Programação do dia



  Esquema do Cenário: Conciliar Grade com divergência de Programa

    Quando acesso http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    E pesquiso por <Canal>

    E pesquiso por <Data>

    E seleciono <Programa>

    E aciono Conciliar

    Então é exibido mensagem “Conciliação ajustada com sucesso.”



#  Critério de Aceite:
#
#  Enviar para o IBMS o <Programa> conciliado na grade;
#
#  Enviar dados do Programa juntamento com a Grade para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Canal | Data           | Programa |

  | GN6   | 06/11/2020 | 6MALT       |

#  | RED    | 06/11/2020 | TARA         |
#
#  | RJ       | 06/11/2020 | TARA         |
#
#  | GN1   | 06/11/2020 | 1MALT       |
#
#  | GN2   | 06/11/2020 | 2MALT       |
#
#  | GN5   | 06/11/2020 | 5MALT       |
#
#  | GN8   | 06/11/2020 | 8MALT       |