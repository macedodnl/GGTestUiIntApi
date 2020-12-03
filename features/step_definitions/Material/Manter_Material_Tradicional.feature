#language:pt
#encoding: utf-8

@Front @Material @Cadastrar_Novo_Material_Tradicional
Funcionalidade: Cadastrar novo material

  Como usuário do OPEC
  Quero manter material tradicional
  Para que seja enviado para a Central de Exibição



  Contexto:
    Dado que eu esteja logado no Siscom acesse o Controle de Materiais, para incluir um novo material

  Esquema do Cenário: Incluir Material Tradional
    Quando seleciono a opção Novo e informo Ponto de Venda"<ponto_de_venda>",  Cliente "<cliente>", Agência de Veiculação "<agencia_de_veiculacao>", Endereço "<endereco>", Título "<titulo>", Duração "<duracao>", Formato "<formato>", Produto "<produto>", Subcategoria "<subcategoria>", Marca "<marca>", Gr. Choque "<gr_choque>", Data Recebimento "<data_recebimento>"
    Quando aciono Incluir Dados
    Então dados são salvos com sucesso, é gerado Código do Material
    E o Material é enviado para Central de exbição



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com a inserção realizada e seus respectivos dados;
#
#  Enviar dados do material cadastrado para Central de Exibição;



    Exemplos:

      |ponto_de_venda |cliente  |agencia_de_veiculacao |endereco |titulo              |duracao |formato |produto              | subcategoria | marca            | gr_choque | data_recebimento |
      |SPP            |UNILEVER |ALMAP                 |SP1 1    |TESTE AUTOMACAO WEB |30      |HD      |AMACIANTE P/ ROUPAS  | AMACIANTE    | FOFO CONCENTRADO | AMACIANTE | 03/12/2020       |



  Esquema do Cenário: Manter Abrangência de Material

    Quando acesso Entrega > Controle de Materiais >Material Tradicional > Manter Dados Básicos

    E informo <Código do Material>

    E aciono Abrangência

    E informo <Exibidora>

    E informo <Pronto de envio>

    E informo <Data Envio Físico>

    E informo <Qtde/Físico>

    E informo <Tipo/Físico>

    E informo <Data Envio/Geração>

    E aciono <Confirmar Abrangência>

    Então dados de abrangência são atualizados com sucesso



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com os dados de abrangência inseridos para respectivo material;
#
#  Enviar Dados Básicos e de Abrangência do material cadastrados para Central de Exibição;



    Exemplos:

      | Código do Material | Exibidora | Pronto de envio | Data Envio Físico | Qtde/Físico | Tipo/Físico | Data Envio/Geração |

      | Código do Material | GN6 | SPP | 09/10/2020 | 1 | DIGITAL | 09/10/2020 |



  Esquema do Cenário: Manter Restrição de Material

    Quando acesso Entrega > Controle de Materiais >Material Tradicional > Manter Dados Básicos

    E informo <Código do Material>

    E aciono Restrição

    E informo <Período Válido de>

    E informo <Período Válido até>

    E aciono Incluir

    Então dados de restrição são atualizados com sucesso



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com os dados de restrição inseridos para respectivo material;
#
#  Enviar Dados Básicos, de Abrangência e Restrição do material cadastrados para Central de Exibição;



    Exemplos:

      | Código do Material | Período Válido de| Período Válido até |

      | Código do Material | 01/12/2020 | 10/12/2020 |



  Esquema do Cenário: Manter Dados de Exibidora de Material

    Quando acesso Entrega > Controle de Materiais >Material Tradicional > Manter Dados Básicos

    E informo <Código do Material>

    E aciono Dados de Exibidora

    E informo <Data de Recebimento>

    E aciono Confirmar Dados

    Então dados de exibidora são atualizados com sucesso



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com os dados de exibidora inseridos para respectivo material;
#
#  Enviar Dados Básicos, de Abrangência, Restrição e de Exibidora do material cadastrados para Central de Exibição;



    Exemplos:

      | Código do Material | Data de Recebimento |

      | Código do Material | 01/12/2020 |