#language:pt
#encoding: utf-8

@Front @Material
Funcionalidade: Material

#  @Editar_Material_falha
#  Cenário: Edtar material com falha
#    Dado que eu acesse a página de pesquisas de materias
#    Quando efetuo uma busca por um material válido
#    E após a edição do material com dados inválidos as alterações são salvas
#    Então o material não deverá ser salvo e não deverá ser enviado para a central de exibição

  @Editar_Material_sucesso
  Esquema do Cenário: Enviar material editado para Central de exibição
     Dado que eu acesse a página de pesquisas de materias
     Quando efetuo uma busca por um material válido "<material>"
     E após a edição do material com dados válidos as alterações são salvas "<endereco>" "<titulo>" "<obs>"
     Então o material deverá ser salvo e enviado para a central de exibição "<material>" "<endereco>" "<titulo>"
    Exemplos:
      |material |endereco |titulo                 |obs                                  |
      |222113   |SP1 1    |MAT P AUTO D TSTS      |NOVA OBS INSERIDA PELO ROBÔ DE TESTES|
      |222113   |DF 1     |MAT P AUTO D TSTS 2    |NOVA OBS INSERIDA PELO ROBÔ DE TESTES|
      |222113   |RJ 1     |CGA TESTE IBMS SEC 20  |TAG PROGRAMA ORIGEM                  |
