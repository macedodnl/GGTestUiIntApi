#language:pt
#encoding: utf-8

@Front @Reserva @Resubmeter_Linha_RP
Funcionalidade: Reserva

  Como usuário do OPEC

  Quero resubmeter ao processo de Reserva, uma linha de RP (Reserva de espaço publicitário)

  Para atualização ser enviada a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Reserva

    E possua permissão de acesso a RP da <Estrutura de Mercado>

    E possua <RP> criado (Executado Cenário: Incluir RP, Item e linha)

    E <Mnemônico de Programa> tenha tempo disponível



  Esquema do Cenário: Resubmeter linha de RP

    Quando navego em Administra Vendas > Registro de compra > Incluir RP

    E informo <RP>

    E aciono <Consultar>

    E aciono aba Veiculações

    E aciono Manutenção de Itens

    E seleciono <Linha>

    E aciono Funções > Resubmeter

    Então linha realiza novamente o processo de Reserva

    E RP é atualizado com sucesso



#  Critérios de Aceite:
#
#  Realizar o processo de atualização de disponível/estoque já existente;
#
#  Enviar para a Central de Exibição os dados do RP, Itens de RP e Linhas atualizados, onde linha irá com novo Status pertinente ao cenário que foi resubmetido, onde foi possível consumir tempo, então será enviado os dados da linha de Programa, modalidade, duração, etc;
#
#  Validar parâmetro de antecipação;
#
#  Validar parâmetro de implantação;



    Exemplos:

      | RP |Estrutura de Mercado |Mnemônico de Programa |
      |    | GN7 |6NOVA |