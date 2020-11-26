#language:pt
#encoding: utf-8

@Front @Grade @Enviar_Grade_Conciliada_Recebida_do_IBMS
Funcionalidade: PBAS

  Como usuário do OPEC

  Quero receber a Grade do IBMS

  Para realizar a Conciliação do IBMS com a PBAS

  E enviar dados da Grade conciliada para a Centra de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Conciliação

    E IBMS tenha enviado uma Grade <Sinal> com<Data> para Conciliação



  Esquema do Cenário: Receber Grade do IBMS

    Quando acesso o Conciliação http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Então é exibida a nova Grade <Sinal> com<Data>



#  Critérios de Aceite:
#
#   Realizar Conciliação Automática conforme US: Manter e enviar Grade conciliada Automaticamente
#
#   Dados da grade atualizados são enviados para a Central de Exibição;
#
#    Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



    Exemplos:

      | Sinal | Data | Data/Hora recebimento |

      | GN6 | 06/11/2020 |  27/10/2020 10:00 |

#      | RED | 06/11/2020 | 27/10/2020 10:00 |
#
#      | RJ | 06/11/2020 | 27/10/2020 10:00 |
#
#      | GN1 | 06/11/2020 | 27/10/2020 10:00 |
#
#      | GN2 | 06/11/2020 | 27/10/2020 10:00 |
#
#      | GN5 | 06/11/2020 | 27/10/2020 10:00 |
#
#      | GN8 | 06/11/2020 | 27/10/2020 10:00 |