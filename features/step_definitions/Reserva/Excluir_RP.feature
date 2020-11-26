#language:pt
#encoding: utf-8

@Front @Reserva @Excluir_RP
Funcionalidade: Reserva

  Como usuário do OPEC

  Quero realizar a exclusão de RP (Reserva de espaço publicitário)

  Para atualização da exclusão ser enviada a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Reserva

    E possua permissão de acesso a RP da <Estrutura de Mercado>

    E possua <RP> criado (Executado Cenário: Incluir RP, Item e linha)



  Esquema do Cenário: Excluir RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono Excluir

    Então RP entra no processo de exclusão

    E RP é excluído com sucesso alterando seu Status para “Excluído”



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente para todos itens e linhas do RP;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde RP irá com Status “Excluído” e Exibidoras sem dados;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP | Estrutura de Mercado |
      |    |GN6                   |