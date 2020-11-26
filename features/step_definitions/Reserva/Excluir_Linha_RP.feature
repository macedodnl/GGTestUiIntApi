#language:pt
#encoding: utf-8

@Front @Reserva @Excluir_Linha_RP
Funcionalidade: Reserva

  Como usuário do OPEC

  Quero realizar a exclusão de uma linha de RP (Reserva de espaço publicitário)

  Para atualização da exclusão ser enviada a Central de Exibição



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

    E aciono Manutenção de Itens

    E seleciono <Linha>

    E aciono Funções > Excluir

    E confirmo mensagem de exclusão de linha

    Então linha entra no processo de exclusão

    E RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde linha irá com Status de Exclusão;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP | Estrutura de Mercado |

      |  | GN6 |
