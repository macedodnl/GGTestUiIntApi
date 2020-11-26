#language:pt
#encoding: utf-8

@Front @Reserva @Excluir_Item_RP
Funcionalidade: Reserva

  Como usuário do OPEC

  Quero realizar a exclusão de um item de RP (Reserva de espaço publicitário)

  Para atualização da exclusão do item ser enviado para a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Reserva

    E possua permissão de acesso a RP da <Estrutura de Mercado>

    E possua <RP> criado (Executado Cenário: Incluir RP, Item e linha)



  Esquema do Cenário: Excluir linha de RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono aba Veiculações

    E aciono Excluir referente ao <Mnemônico de Programa>

    E confirmo mensagem de exclusão de Programa

    Então <Mnemônico de Programa> entra no processo de exclusão

    E RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde Item irá com Status de Exclusão;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP |Estrutura de Mercado |Mnemônico de Programa |
      |    | GN7 |6NOVA |