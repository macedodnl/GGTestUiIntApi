#language:pt
#encoding: utf-8

@Front @Reserva @Incluir_RP_Item_e_Linha
Funcionalidade: Reserva

  Como usuário do OPEC
  Quero realizar uma reserva de espaço publicitário
  Para ser enviado a Central de Exibição



  Contexto:
    Dado que eu esteja logado no Siscom acesse a Reserva, para incluir um rp

  @Teste
  Esquema do Cenário: Incluir RP, Item e linha
    Quando preencho o formulário na aba de caracterização com Característica de Compra "<caracteristica_compra>", Produto do Portfolio "<produto_portfolio>", Contato de Atendimento "<contato_atendimento>", Mes ano "<mes_ano>",  Cliente "<cliente>", Agencia "<agencia>", Operacao "<operacao>",  referência do mapa "<ref_mapa>"
    Quando aciono na aba Abrangência e

#    E seleciono <Estrutura de Mercado>
#    E aciono seta para determinação da Abrangência do RP
#    E aciono aba Veiculações
#    E aciono Inclusão e Disponibilidade
#    E informo <Mnemônico de Programa>
#    E informo <Modalidade>
#    E informo <Material>
#    E informo <Duração>
#    E informo <Quantidade> no <Dia> de inserção
    E aciono Incluir
#   E aciono Salvar
    Então RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de estoque já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP inseridos e Linhas inseridas;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;

#  caracteristica_compra
#   Encaixe = 1
#  produto_portfolio
#   Patrocínio de Programa = 55
#    cliente = ARTPHARMA FARMACIA


    Exemplos:

      |caracteristica_compra | produto_portfolio |contato_atendimento     |mes_ano  |cliente            |agencia                  |operacao |ref_mapa     |

      |1                     | 55                |Ana Claudia Armiliato.  |11/2020  |ARTPHARMA FARMACIA |ELLO PROPAGANDA LTDA -ME |VGN      |000001       |

      |1                     | 55                |Ana Claudia Armiliato.  |11/2020  |ARTPHARMA FARMACIA |ELLO PROPAGANDA LTDA -ME |VGN      |000001       |

      |1                     | 55                |Ana Claudia Armiliato.  |11/2020  |ARTPHARMA FARMACIA |ELLO PROPAGANDA LTDA -ME |VGN      |000001       |

      |1                     | 55                |Ana Claudia Armiliato.  |11/2020  |ARTPHARMA FARMACIA |ELLO PROPAGANDA LTDA -ME |VGN      |000001       |

#      | Contato de Atendimento | ANA BULL |
#
#      | Cliente | POR BENE FARM |
#
#      | Agência | DIRETO |
#
#      | Operação |       |
#
#      | Referência do Mapa | TESTE_GN6 |
#
#      | Estrutura de Mercado | GN6 |
#
#      | Mnemônico do Programa | PROF|
#
#      | Modalidade | PTR |
#
#      | Material | 617932 - 5931 THROMBOCID GEL 20 |
#
#      | Duração | 20 |
#
#      | Quantidade | 2 |
#
#      | Dia | 07/11/2020 |