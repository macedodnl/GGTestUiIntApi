#language:pt
#encoding: utf-8

@Front @Reserva @Alterar_Linha_RP
Funcionalidade: Reserva

  Como usuário do OPEC

  Quero realizar alteração de uma linha de RP (Reserva de espaço publicitário)

  Para atualização ser enviada a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Reserva

    E possua permissão de acesso a RP da <Estrutura de Mercado>

    E possua <RP> criado (Executado Cenário: Incluir RP, Item e linha)



  Esquema do Cenário: Alterar Data da linha de RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono aba Veiculações

    E aciono Manutenção de Itens

    E seleciono <Linha>

    E aciono Funções > Alterar

    E altero <Data>

    E aciono Ok

    Então linha entra no processo de atualização

    E RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde linha irá com Status de referente a alteração e não mais para a data anterior, mas sim para a nova <Data>;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP | Linha | Data |

      |    |  | 10/11/2020 |



  Esquema do Cenário: Alterar Programa, Modalidade, Duração da linha de RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono aba Veiculações

    E aciono Manutenção de Itens

    E seleciono <Linha>

    E aciono Funções > Alterar

    E altero <Mnemônico de Programa>

    E altero <Modalidade>

    E altero <Duração>

    E aciono Ok

    Então linha entra no processo de atualização

    E RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente validando alteração do <Mnemônico de Programa>, <Modalidade> e <Duração> ;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde linha irá com novos dados de <Mnemônico de Programa>, <Modalidade> e <Duração> ;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP | Data       | Mnemônico de Programa |Modalidade |Duração|
      |    | 10/11/2020 |6NOVA                  |  CPT      |120    |


  Esquema do Cenário: Alterar Material da linha de RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono aba Veiculações

    E aciono Manutenção de Itens

    E seleciono <Linha>

    E aciono Funções > Alterar

    E altero <Material>

    E aciono Ok

    Então linha entra no processo de atualização

    E RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde linha irá com novo <Material> associado;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP | Estrutura de Mercado | Data      | Material |
      |    | GN7                  |10/11/2020 | 346932   |



  Esquema do Cenário: Alterar break determinado da linha de RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono aba Veiculações

    E aciono Manutenção de Itens

    E seleciono <Linha>

    E aciono Funções > Alterar

    E altero <Break determinado>

    E aciono Ok

    Então linha entra no processo de atualização

    E RP é atualizado com sucesso

    Exemplos:

      | RP |Estrutura de Mercado  |Data       |Break determinado |
      |    |  GN6                 |10/11/2020 | 2                |



#  Critérios de Aceite:
#
#  Realizar o processo de determinação de break já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde linha irá com break determinado na posição de <Break determinado>;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



