#language:pt
#encoding: utf-8

@Front @Grade @Enviar_Grade_Estrutura_Breaks_Atualizada_e_Conciliada
Funcionalidade: PBAS

  Como usuário do Opec

  Quero conciliar a grade com a estrutura de breaks atualizada com o IBMS

  Para enviá-la atualizada para a Central de Exibição



  Contexto:

    Dado que possua permissão de acesso ao Conciliação

    E tenha criado Programação na PBAS com <Canal>, <Data> e <Programa>

    E IBMS retorna Grade com ajuste de <Nº Breaks IBMS> para o <Programa>

    E tenha executado na PBAS  a US: Manter Estrutura de Breaks (quantidade, hora, tempo e fuso) - Cenário: Reduzir número de Breaks de um programa



  Esquema do Cenário: Conciliar grade com divergência de Estrutura (Redução de Breaks)

    Quando acesso http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    E pesquiso por <Canal>

    E pesquiso por <Data>

    E seleciono o <Programa>

    E aciono Conciliar

    Então é exibido mensagem “Conciliação ajustada com sucesso.”



  Exemplos:

  | Nº Breaks Pbas | Nº Breaks IBMS | Canal | Data | Programa | Data inicial | Data final |

  | 2 | 2 | GN6 | 06/11/2020 | 6MALT | 06/11/2020 | 06/11/2020 |

#  | 2 | 2 | RED | 06/11/2020 | MALT    | 06/11/2020 | 06/11/2020 |
#
#  | 2 | 2 | RJ    | 06/11/2020 | MALT    | 06/11/2020 | 06/11/2020 |
#
#  | 2 | 2 | GN1| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |
#
#  | 2 | 2 | GN2| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |
#
#  | 2 | 2 | GN5| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |
#
#  | 2 | 2 | GN8| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |



#  Contexto:
#
#    Dado que possua permissão de acesso ao Conciliação
#
#    E tenha criado Programação na PBAS com <Canal>, <Data> e <Programa>
#
#    E IBMS retorna Grade com ajuste de <Nº Breaks IBMS> para o <Programa>
#
#    E tenha executado na PBAS  a US: Manter Estrutura de Breaks (quantidade, hora, tempo e fuso) - Cenário: Aumentar número de Breaks de um programa



  Esquema do Cenário: Conciliar Roteiro com divergência de Estrutura (Aumento de Breaks)

    Quando acesso http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    E pesquiso por <Canal>

    E pesquiso por <Data>

    E seleciono o <Programa>

    E aciono Conciliar

    Então é exibido mensagem “Conciliação ajustada com sucesso.”



  Exemplos:

  | Nº Breaks Pbas | Nº Breaks IBMS | Canal | Data | Programa | Data inicial | Data final |

  | 3 | 3 | GN6 | 06/11/2020 | 6MALT | 06/11/2020 | 06/11/2020 |

#  | 3 | 3 | RED | 06/11/2020 | MALT    | 06/11/2020 | 06/11/2020 |
#
#  | 3 | 3 | RJ    | 06/11/2020 | MALT    | 06/11/2020 | 06/11/2020 |
#
#  | 3 | 3 | GN1| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |
#
#  | 3 | 3 | GN2| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |
#
#  | 3 | 3 | GN5| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |
#
#  | 3 | 3 | GN8| 06/11/2020 | 1MALT  | 06/11/2020 | 06/11/2020 |



#  Critério de Aceite:
#
#  <Nome do Programa> é conciliado com nova estrutura de breaks e respectivos dados conciliados são enviados para o IBMS;
#
#    Dados da grade atualizados são enviados para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);