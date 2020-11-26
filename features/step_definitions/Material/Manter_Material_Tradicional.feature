#language:pt
#encoding: utf-8

@Front @Material @Manter_Material_Tradicional
Funcionalidade: Material

  Como usuário do OPEC

  Quero manter material tradicional

  Para que seja enviado para a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Controle de Materiais



  Esquema do Cenário: Incluir Material Tradional

    Quando acesso Entrega > Controle de Materiais >Material Tradicional > Manter Dados Básicos

    E aciono Novo

    E informo <Ponto de Venda>

    E informo <Cliente>

    E informo <Agência de Veiculação>

    E informo <Endereço>

    E informo <Título>

    E informo <Duração>

    E seleciono <Formato>

    E informo <Produto>

    E informo <Subcategoria>

    E informo <Marca>

    E informo <Gr. Choque>

    E informo <Data Recebimento>

    E aciono Incluir Dados

    Então dados são salvos com sucesso e gerado <Código do Material>



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com a inserção realizada e seus respectivos dados;
#
#  Enviar dados do material cadastrado para Central de Exibição;



    Exemplos:

      | Ponto de Venda | Cliente | Agência de Veiculação | Endereço | Título | Duração | Formato | Produto | Subcategoria | Marca | Gr. Choque | Data Recebimento |

      | SPP | UNILEVER | ALMAP | SP1 1 | TESTE QA AMACIANTE | 30 | HD | AMACIANTE P/ ROUPAS | AMACIANTE | FOCO| AMACIANTE | 09/10/2020 |



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