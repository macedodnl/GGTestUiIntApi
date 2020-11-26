#language:pt
#encoding: utf-8

@Front @Grade @Enviar_Grade_Conciliada_Automaticamente
Funcionalidade: PBAS

  Como usuário do OPEC

  Quero conciliar automaticamente a Grade enviada pelo IBMS

  Para enviar os dados de conciliação do IBMS para a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Conciliação

    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação

    E grade possua <Nome do Programa> que conste na Programação da <Data> na PBAS do Siscom



  Esquema do Cenário: Conciliar automaticamente  Nome do Programa

    E acesso Conciliação  http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    Então é exibido <Nome do Programa> com <Mnemônico do Programa> vinculado

  Exemplos:

  | Grade | Data           | Nome do Programa | Mnemônico do Programa | Nº de Breaks |

  | GN6     | 15/06/2020 | Novela                         | 6NOVL                                  | 1                    |

#  | Rede    | 11/05/2020 | Bom Dia Brasil            | NBRA                                    | 0                     |
#
#  | Rede    | 11/05/2020 | Santa Missa                | MISSA                                   | 2                     |
#
#  | Rede    | 11/05/2020 | Jornal Nacional           | JNAC                                     | 1                    |
#
#  | RJ         | 15/06/2020 | Jornal Nacional           | JNAC                                     | 1                    |
#
#  | GN8     | 15/06/2020 | Novela 1                      | 8NOVA                                  | 1                    |



#  Critérios de Aceite:
#
#  <Nome do Programa> e <Mnemônico do Programa> vinculados para a grade são armazenados no histórico
#
#  <Nome do Programa> e respectivos dados conciliados são enviados para o IBMS
#
#    Dados da grade atualizados são enviados para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



#  Contexto:
#
#    Dado que eu esteja logado no Siscom
#
#    E possua permissão de acesso ao Conciliação
#
#    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação
#
#    E grade possua <Nome do Programa> que conste na Programação da <Data> na PBAS do Siscom
#
#    E possua mesmo <Nº de breaks> na Programação da <Data> na PBAS do Siscom



  Esquema do Cenário: Conciliar automaticamente por Nº de Break

    E acesso Conciliação  http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    Então é exibido <Nome do Programa> com <Mnemônico do Programa> vinculado e Conciliado ‘Sim’



#  Critérios de Aceite:
#
#  <Nome do Programa> e <Mnemônico do Programa> vinculados para a grade são armazenados no histórico
#
#  <Nome do Programa> e respectivos dados conciliados são enviados para o IBMS
#
#    Dados da grade atualizados são enviados para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Grade | Data           | Nome do Programa | Mnemônico do Programa | Nº de Breaks |

  | GN6     | 15/06/2020 | Novela                         | 6NOVL                                  | 1                    |

#  | Rede    | 11/05/2020 | Bom Dia Brasil            | NBRA                                    | 0                     |
#
#  | Rede    | 11/05/2020 | Santa Missa                | MISSA                                   | 2                     |
#
#  | Rede    | 11/05/2020 | Jornal Nacional           | JNAC                                     | 1                    |
#
#  | RJ         | 15/06/2020 | Jornal Nacional           | JNAC                                     | 1                    |
#
#  | GN8     | 15/06/2020 | Novela 1                      | 8NOVA                                  | 1                    |



#  Contexto:
#
#    Dado que eu esteja logado no Siscom
#
#    E possua permissão de acesso ao Conciliação
#
#    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação
#
#    E grade possua DUAS ou MAIS VEZES o <Nome do Programa> que conste na Programação da <Data> na PBAS do Siscom
#
#    E grade possua no TOTAL o mesmo <Nº de breaks> que consta na Programação da <Data> na PBAS do Siscom para o <Nome do Programa>
#
#    E para o  <Nome do Programa> tenha executado a US e Cenário: Configurar Programa



  Esquema do Cenário: Conciliar automaticamente Programa Duplicado

    E acesso Conciliação  http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    Então são exibidos todos os <Nome do Programa> (s) com <Mnemônico do Programa> (s) vinculados



#  Critérios de Aceite:
#
#  <Nome do Programa> (s) e <Mnemônico do Programa> (s) vinculado (s) para a grade são armazenados no histórico
#
#  <Nome do Programa> (s) e respectivos dados conciliados são enviados para o IBMS
#
#    Dados da grade atualizados são enviados para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Grade | Data           | Nome do Programa        | Mnemônico do Programa | Nº de Breaks |

  | GN6     | 15/06/2020 | Vale A Pena Ver De Novo | 6VALE                                     | 2                      |

#  | GN6     | 15/06/2020 | Vale A Pena Ver De Novo | 6VALE                                     | 2                      |
#
#  | Rede    | 11/05/2020 | Vale A Pena Ver De Novo | VALE                                       | 2                      |
#
#  | Rede    | 11/05/2020 | Vale A Pena Ver De Novo | VALE                                       | 2                      |
#
#  | RJ         | 15/06/2020 | Vale A Pena Ver De Novo | VALE                                       | 2                      |
#
#  | RJ         | 15/06/2020 | Vale A Pena Ver De Novo | VALE                                       | 2                      |
#
#  | GN8     | 15/06/2020 | Vale A Pena Ver De Novo | 8VALE                                     | 2                      |
#
#  | GN8     | 15/06/2020 | Vale A Pena Ver De Novo | 8VALE                                      | 2                     |



#  Contexto:
#
#    Dado que eu esteja logado no Siscom
#
#    E possua permissão de acesso ao Conciliação
#
#    E IBMS tenha enviado uma <Grade> com <Data> para Conciliação
#
#    E grade possua DUAS ou MAIS VEZES o <Event Profile/Nome Programa>
#
#    E <Event Profile/Nome Programa> esteja configurado em “Configurações de Programa” conforme  US e Cenário: Configurar Programa
#
#    E <Mnemônico do Programa> (s) associado ao <Event Profile/Nome Programa> configurado em  “Configurações de Programa” conforme US e Cenário: Configurar Programa, constem na Programação da <Data> na PBAS do Siscom
#
#    E grade enviada pelo IBMS possua o mesmo <Nº de breaks> para <Event Profile/Nome Programa> que consta para o (s) <Mnemônico do Programa>(s) na Programação da <Data> na PBAS do Siscom



  Esquema do Cenário: Conciliar automaticamente Programa com Reprise ou UM Programa com dois Mnemônico

    E acesso Conciliação  http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    Então são exibidos<Event Profile/Nome Programa> (s) com <Mnemônico do Programa> (s) vinculados



#  Critérios de Aceite:
#
#  <Event Profile/Nome Programa> com <Mnemônico do Programa> são vinculados conforme o horário de exibição que consta na PBAS
#
#  <Event Profile/Nome Programa> e <Mnemônico do Programa> vinculados para a grade são armazenados no histórico
#
#  <Event Profile/Nome Programa> e respectivos dados conciliados são enviados para o IBMS
#
#    Dados da grade atualizados são enviados para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Grade | Data           | Event Profile/Nome Programa  | Mnemônico do Programa | Nº de Breaks |

  | GN6     | 15/06/2020 | SUPERSÉRIE                                  | 6SSER                                     | 2                      |

#  | GN6     | 15/06/2020 | SUPERSÉRIE                                  | 6SSERR                                   | 1                      |
#
#  | Rede    | 11/05/2020 | Futebol                                          | FGGE                                      | 2                     |
#
#  | Rede    | 11/05/2020 | Futebol                                          | FGG2A                                    | 2                     |
#
#  | RJ         | 15/06/2020 | Futebol                                         | FGGE                                       | 2                     |
#
#  | RJ         | 15/06/2020 |  Futebol                                        | FGG2A                                    | 2                     |
#
#  | GN8     | 15/06/2020 | SITIO DO PICA PAU AMARELO     | 8SITI2                                     | 1                      |
#
#  | GN8     | 15/06/2020 | SITIO DO PICA PAU AMARELO     | 8SITI2R                                   | 2                      |



#  Contexto:
#
#    Dado que eu esteja logado no Siscom
#
#    E possua permissão de acesso ao Conciliação
#
#    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação
#
#    E grade possua <Nome do Programa>  que consta na Programação da <Data> na PBAS do Siscom para o
#
#    E conste na Programação da <Data> na PBAS do Siscom para o <Nome do Programa> o <Programa entre Blocos> executado no US : Configurar Programa e Cenário: Programa entre Blocos
#
#    E tenha executado a US : Configurar Programa e Cenário: Programa entre Blocos para  <Nome do Programa> e <Programa entre Blocos>
#
#    E grade possua para o <Nome do Programa> o mesmo <Nº de breaks> que consta no TOTAL na Programação da <Data> na PBAS do Siscom para o <Nome do Programa> e <Programa entre Blocos>





  Esquema do Cenário: Conciliar automaticamente Programa entre Breaks

    E acesso Conciliação  http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    Então é exibido <Nome do Programa>  com <Mnemônico do Programa>  vinculado e Conciliado ‘Sim’



#  Critérios de Aceite:
#
#  Conciliação valida o total de Nº de Breaks do <Nome do Programa> e <Programa entre Blocos>
#
#  <Nome do Programa> e <Mnemônico do Programa> vinculados para a grade são armazenados no histórico
#
#  <Nome do Programa> e respectivos dados conciliados são enviados para o IBMS
#
#    Dados da grade atualizados são enviados para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Grade | Data         | Nome do Programa | Mnemônico Programa | Nº Breaks | Programa entre Blocos |

  | GN6     | 15/06/2020 | Encontro com Fátima Bernardes | FATI               | 2                | BEST   (1 BREAK )            |

#  | Rede    | 11/05/2020 | Encontro com Fátima Bernardes | FATI               | 2                | BEST   (1 BREAK )            |
#
#  | RJ         | 15/06/2020 | Encontro com Fátima Bernardes | FATI               | 2                | BEST   (1 BREAK )            |
#
#  | GN8     | 15/06/2020 | Encontro com Fátima Bernardes | FATI               | 2                | BEST   (1 BREAK )            |



#  Contexto:
#
#    Dado que eu esteja logado no Siscom
#
#    E possua permissão de acesso ao Conciliação
#
#    E IBMS tenha enviado uma <Grade> com<Data> para Conciliação
#
#    E grade possua <Nome do Programa> que consta na Programação da <Data> na PBAS do Siscom para o
#
#    E conste na Programação da <Data> na PBAS do Siscom para o <Nome do Programa> o <Programa entre Blocos> executado no US: Configuração de Programa e Cenário: Programa dias diferentes
#
#    E tenha executado a US: Configuração de Programa e Cenário: Programa dias diferentes para <Nome do Programa> e <Programa entre Blocos>
#
#    E grade possua para o <Nome do Programa> o mesmo <Nº de breaks> que consta no TOTAL na Programação da <Data> na PBAS do Siscom para o <Nome do Programa> e <Programa entre Blocos>





  Esquema do Cenário: Conciliar automaticamente Novela em dias distintos (Novela)

    E acesso Conciliação http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    Quando atualizo o Conciliação

    E aciono para expandir a <Grade> <Data>

    Então é exibido <Nome do Programa> com <Mnemônico do Programa> vinculado e Conciliado ‘Sim’



#  Critérios de Aceite:
#
#  Conciliação valida o total de Nº de Breaks do <Nome do Programa> e <Programa entre Blocos>
#
#  <Nome do Programa> e <Mnemônico do Programa> vinculados para a grade são armazenados no histórico
#
#  <Nome do Programa> e respectivos dados conciliados são enviados para o IBMS
#
#    Dados da grade atualizados são enviados para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Grade | Data | Nome do Programa | Mnemônico Programa | Nº Breaks | Dia da semana|

  | GN6     | 15/06/2020 | NOVELA | 6NOV              | 2                |  Segunda, Terça, Quarta, Quinta, Sexta         |

#  | GN6     | 15/06/2020 | NOVELA | 6NOV              | 2                |  Sábado         |
#
#  | Rede | 11/05/2020 | Novela | NOV | 2 | Segunda, Terça, Quarta, Quinta, Sexta |
#
#  | Rede | 11/05/2020 | Novela | NOV | 2 | Sábado |
#
#  | RJ         | 15/06/2020 | NOVELA  | NOV | 2                |  Segunda, Terça, Quarta, Quinta, Sexta          |
#
#  | RJ         | 15/06/2020 | NOVELA  | NOV               | 2                |  Sábado        |
#
#  | GN8     | 15/06/2020 | NOVELA  | 8NOV              | 2                |  Segunda, Terça, Quarta, Quinta, Sexta         |
#
#  | GN8     | 15/06/2020 | NOVELA  | 8NOV              | 2                |  Sábado      |