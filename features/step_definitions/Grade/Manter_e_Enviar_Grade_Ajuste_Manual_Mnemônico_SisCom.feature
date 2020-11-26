#language:pt
#encoding: utf-8

@Front @Grade @Enviar_Grade_Ajuste_Manual_Mnemônico
Funcionalidade: PBAS

  Como usuário do OPEC

  Quero informar mnemônico de Programa

  Para realizar a conciliação com o IBMS e enviar programas conciliados para a CE



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Conciliação

    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação

    E grade possua <Nome do Programa> diferente dos Programas que constam na Programação do <dia> (PBAS) do Siscom



  Esquema do Cenário: Informar Mnemônico de Programa e Conciliar Programa

    E acesso Conciliação http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    E seleciono o <Mnemônico do Programa> para o <Nome do Programa>

    E aciono Conciliar

    Então é exibida mensagem “Conciliação realizada com sucesso.”



#  Critérios de Aceite:
#
#  Exibir divergência Status “Programa não encontrado”;
#
#  Mnemônicos exibidos no campo Mnemônico do Programa são os Mnemônicos dos Programas que constam na Programação (PBAS) do Siscom para <Grade> <Data>
#
#  <Nome do Programa> e <Mnemônico do Programa> vinculados para a grade são armazenados no histórico
#
#  <Nome do Programa> e respectivos dados conciliados da grade são enviados para a IBMS;
#
#  <Nome do Programa> e respectivos dados conciliados da grade são enviados para a CE;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Grade | Data           | Nome do Programa | Mnemônico do Programa |

  | GN6    | 06/11/2020 | Malhação                     | 6MALT                                 |

#  | Rede   | 11/05/2020 | Malhação                     | MALT                                   |
#
#  | RJ        | 11/05/2020 | JORNAL                       | PTV1                                    |
#
#  | GN1   | 11/05/2020 | Malhação                     | 1MALT                                  |
#
#  | GN2   | 11/05/2020 | Malhação                     | 2MALT                                  |
#
#  | GN5   | 11/05/2020 | Malhação                     | 5MALT                                  |
#
#  | GN8   | 11/05/2020 | Malhação                     | 8MALT                                  |



#  Contexto:
#
#    Dado que eu esteja logado no Siscom
#
#    E possua permissão de acesso ao Conciliação
#
#    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação
#
#    E tenha executado o Cenário: Informar Mnemônico de Programa e Conciliar Programa



  Esquema do Cenário: Editar Mnemônico de Programa e Conciliar Programa

    E acesso Conciliação http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    E é exibido <Nome do Programa> com <Mnemônico do Programa> vinculado e Conciliado ‘Não’

    E aciono o campo de <Mnemônico do Programa>

    E altero para <Mnemônico do Programa Novo>

    E aciono Conciliar

    Então é exibida mensagem “Conciliação realizada com sucesso.”



#  Critérios de Aceite:
#
#  <Nome do Programa> e respectivos dados conciliados são enviados para o IBMS;
#
#  <Nome do Programa> e respectivos dados conciliados são enviados juntamente com a Grade para a CE;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Grade | Data           | Nome do Programa | Mnemônico Programa | Mnemônico Programa Novo |

  | GN6    | 06/11/2020 | Malhação                     | 6MALT                            | 6MALT1                                     |

#  | Rede   | 11/05/2020 | Malhação                     | MALT                              | MALT1                                       |
#
#  | RJ        | 11/05/2020 | JORNAL                       | PTV1                               | PTV1                                          |
#
#  | GN1   | 11/05/2020 | Malhação                     | 1MALT                             | 1MALT                                       |
#
#  | GN2   | 11/05/2020 | Malhação                     | 2MALT                             | 2MALT                                       |
#
#  | GN5   | 11/05/2020 | Malhação                     | 5MALT                             | 2MALT                                       |
#
#  | GN8   | 11/05/2020 | Malhação                     | 8MALT                              | 2MALT                                      |