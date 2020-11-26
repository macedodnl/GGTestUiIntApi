#language:pt
#encoding: utf-8

@Front @Reserva @Incluir_RP
Funcionalidade: Reserva

  Como usuário do OPEC

  Quero realizar uma reserva de espaço publicitário sem inserção

  Para NÃO ser enviado a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Reserva

    E possua permissão de acesso a RP da <Estrutura de Mercado>



  Esquema do Cenário: Incluir RP sem abrangência

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <Característica da Compra>

    E informo <Produto do Portfólio>

    E informo <Contato de Atendimento>

    E informo <Mês/Ano>

    E informo <Cliente>

    E informo <Agência>

    E informo <Operação>

    E informo <Referência do Mapa>

    E aciono Salvar

    Então RP é criado com sucesso

    Exemplos:

      | Característica da Compra | Encaixe |

      | Produto do Portfólio | Patrocínio de Programa |

#      | Contato de Atendimento | ANA BULL |
#
#      | Mês/Ano | 11/2020 |
#
#      | Cliente | POR BENE FARM |
#
#      | Agência | DIRETO |
#
#      | Operação | |
#
#      | Referência do Mapa | TESTE_GN6 |
#
#      | Estrutura de Mercado | GN6 |





  Esquema do Cenário: Incluir RP com abrangência

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <Característica da Compra>

    E informo <Produto do Portfólio>

    E informo <Contato de Atendimento>

    E informo <Mês/Ano>

    E informo <Cliente>

    E informo <Agência>

    E informo <Operação>

    E informo <Referência do Mapa>

    E aciono Salvar

    E aciono na aba Abrangência

    E seleciono <Estrutura de Mercado>

    E aciono seta para determinação da Abrangência do RP

    E aciono Salvar

    Então RP é atualizado com sucesso



#  Critérios de Aceite:
#
#    Dados de RP NÃO são enviados para a Central de Exibição ;



    Exemplos:

      | Característica da Compra | Encaixe |

      | Produto do Portfólio | Patrocínio de Programa |

#      | Contato de Atendimento | ANA BULL |
#
#      | Mês/Ano | 11/2020 |
#
#      | Cliente | POR BENE FARM |
#
#      | Agência | DIRETO |
#
#      | Operação | |
#
#      | Referência do Mapa | TESTE_GN6 |
#
#      | Estrutura de Mercado | GN6 |