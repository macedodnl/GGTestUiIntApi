#language:pt
#encoding: utf-8

@Front @Material
Funcionalidade: Ediçao de Material SisCom

  @Editar_Material_sucesso
  Cenário: Enviar material editado para Central de exibição
    Dado que eu acesse a página de pesquisas de materias
    Quando efetuo uma busca por um material válido
    E após a edição do material com dados válidos as alterações são salvas
    Então o material deverá ser salvo e enviado para a central de exibição
  @Editar_Material_falha
  Cenário: Edtar material com falha
    Dado que eu acesse a página de pesquisas de materias
    Quando efetuo uma busca por um material válido
    E após a edição do material com dados inválidos as alterações são salvas
    Então o material não deverá ser salvo e não deverá ser enviado para a central de exibição