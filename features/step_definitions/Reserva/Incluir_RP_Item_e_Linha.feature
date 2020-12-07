#language:pt
#encoding: utf-8

@Front @Reserva @Incluir_RP_Item_e_Linha
Funcionalidade: Efetuar reservas de espaços publicitários em diversos canais

  Como usuário do OPEC
  Quero realizar uma reserva de espaço publicitário
  Para ser enviado a Central de Exibição


  Contexto:
    Dado que eu esteja logado no Siscom acesse a Reserva, para incluir um rp

  Esquema do Cenário: Incluir RP, Item e linha
    Quando preencho o formulário na aba de caracterização com Característica de Compra "<caracteristica_compra>", Produto do Portfolio "<produto_portfolio>", Contato de Atendimento "<contato_atendimento>", Mes ano "<mes_ano>",  Cliente "<cliente>", Agencia "<agencia>", Operacao "<operacao>",  referência do mapa "<ref_mapa>"
    Quando aciono na aba Abrangência e informo a estrutura de mercado "<estrutura_de_mercado>"
    Quando aciono aba Veiculações e informo em Inclusão e Disponibilidade o Mnemônico de Programa "<mnemonico_d_programa>", a Modalidade "<modalidade>", o Material "<material>", a Duração <duracao> e a Quantidade <quantidade> no Dia "<dia>"
    Quando aciono Incluir
    Então RP é atualizado com sucesso e evniado para CE


#  caracteristica_compra
#   Encaixe = 1
#  produto_portfolio
#   Patrocínio de Programa = 55
#    cliente = ARTPHARMA FARMACIA


    Exemplos:

      |caracteristica_compra | produto_portfolio |contato_atendimento     |mes_ano  |cliente            |agencia                  |operacao |ref_mapa     |estrutura_de_mercado |mnemonico_d_programa |modalidade |material     |duracao  |quantidade |dia  |
      |1                     | 55                |Ana Claudia Armiliato.  |12/2020  |ARTPHARMA FARMACIA |ELLO PROPAGANDA LTDA -ME |VGN      |0000000002   |gn6                  |6N21H                |CPT        |A Determinar |20       |1          |15   |
      |1                     | 55                |Ana Claudia Armiliato.  |12/2020  |ARTPHARMA FARMACIA |ELLO PROPAGANDA LTDA -ME |VGN      |0000000002   |gn7                  |7F21H                |CPT        |A Determinar |20       |1          |15   |