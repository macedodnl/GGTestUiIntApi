#language:pt
#encoding: utf-8

@Front @Material @Manter_Material_Producao_Comercial
Funcionalidade: Material

  Como usuário do OPEC

  Quero manter Material Comercial

  Para que seja enviado para a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Controle de Materiais



  Esquema do Cenário: Incluir Material Comercial

    Quando acesso Entrega > Controle de Materiais >Material Comercial > Manter Dados Básicos

    E aciono Novo

    E informo <Ponto de Venda>

    E informo <Modalidade>

    E informo <Título>

    E informo <Duração>

    E seleciono <Formato>

    E aciono Atualizar Dados

    Então dados são salvos com sucesso e gerado <Código do Material> de Produção



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com a inserção realizada e seus respectivos dados de Material de Produção;
#
#  Enviar dados do Material de Produção cadastrado para Central de Exibição;



    Exemplos:

      | Ponto de Venda | Modalidade | Título | Duração | Formato |

      | RJP |CCP | TESTE RABIC | 30 | HD |



  Esquema do Cenário: Manter Abrangência de Material de Produção

    Quando acesso Entrega > Controle de Materiais >Material Comercial > Manter Dados Básicos

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
#  Atualizar o Controle de Materiais (CMAT) com os dados de abrangência inseridos para respectivo Material Comercial;
#
#  Enviar Dados Básicos e de Abrangência do Material Comercial cadastrados para Central de Exibição;



    Exemplos:

      | Código do Material | Exibidora | Pronto de envio | Data Envio Físico | Qtde/Físico | Tipo/Físico | Data Envio/Geração |

      | Código do Material | GN6 | RJP | 09/10/2020 | 1 | DIGITAL | 09/10/2020 |



  Esquema do Cenário: Manter Restrição de Material Comercial

    Quando acesso Entrega > Controle de Materiais >Material Comercial> Manter Dados Básicos

    E informo <Código do Material>

    E aciono Restrição

    E informo <Período Válido de>

    E informo <Período Válido até>

    E aciono Incluir

    Então dados de restrição são atualizados com sucesso



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com os dados de restrição inseridos para respectivo Material Comercial;
#
#  Enviar Dados Básicos, de Abrangência e Restrição do Material Comercial cadastrados para Central de Exibição;



    Exemplos:

      | Código do Material | Período Válido de| Período Válido até |

      | Código do Material | 01/12/2020 | 10/12/2020 |



  Esquema do Cenário: Manter Dados de Exibidora de Material Comercial

    Quando acesso Entrega > Controle de Materiais >Material Comercial > Manter Dados Básicos

    E informo <Código do Material>

    E aciono Dados de Exibidora

    E informo <Data de Recebimento>

    E aciono Confirmar Dados

    Então dados de exibidora são atualizados com sucesso



#  Critérios de Aceite:
#
#  Atualizar o Controle de Materiais (CMAT) com os dados de exibidora inseridos para respectivo Material Comercial;
#
#  Enviar Dados Básicos, de Abrangência, Restrição e de Exibidora do Material Comercial cadastrados para Central de Exibição;



    Exemplos:

      | Código do Material | Data de Recebimento |

      | Código do Material | 01/12/2020 |