#language:pt
#encoding: utf-8

@Front @Reserva @Pender_Linha_RP
Funcionalidade: Reserva

  Como usuário do OPEC

  Quero pender uma linha de RP (Reserva de espaço publicitário)

  Para atualização ser enviada a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Reserva

    E possua permissão de acesso a RP da <Estrutura de Mercado>

    E possua <RP> criado (Executado Cenário: Incluir RP, Item e linha)



  Esquema do Cenário: Pender linha de RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono aba Veiculações

    E aciono Manutenção de Itens

    E seleciono <Linha>

    E aciono Funções > Pender

    E informo <Motivo Pender>

    E aciono Ok

    Então linha entra no processo de atualização

    E RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente;
#
#  Realizar o processo de pender já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde linha irá com Status referente a “Pender”;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP |Estrutura de Mercado | Motivo Pender |
      |    | GN6                 |99 |