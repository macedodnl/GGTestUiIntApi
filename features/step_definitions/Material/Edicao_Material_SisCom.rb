# require "httparty"

Dado("que eu acesse a página de pesquisas de materias") do
  @login_page.visitar
  @login_page.loginPadrao
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_MaterialTradicional
end

Quando("efetuo uma busca por um material válido {string}") do |material|
  @CadastroMaterial_page.busca_Material(material)
end


Quando("após a edição do material com dados válidos as alterações são salvas {string} {string} {string}") do |endereco, titulo, obs|
  @CadastroMaterial_page.edita_Material(endereco, titulo, obs)
  embed(@CadastroMaterial_page.print, "image/png", "Screenshot")
end


Então("o material deverá ser salvo e enviado para a central de exibição {string}") do |material|
  @result = BaseTest.carregarUltimaAlteracaoMaterial(material)
  responsebody = @result.response.body
  expect(responsebody).to include(material)
end

Então("o material deverá ser salvo e enviado para a central de exibição {string} {string} {string}") do |material, endereco, titulo|
  @result = BaseTest.carregarUltimaAlteracaoMaterial(material)
  responsebody = @result.response.body
  expect(responsebody).to include(material)
  if endereco == "SP1 1"
    expect(responsebody).to include("SP1")
  elsif endereco == "RJ 1"
    expect(responsebody).to include("RJ")
  elsif endereco == "DF 1"
    expect(responsebody).to include("DF")
  else
    expect(responsebody).to include(endereco)
    end
  expect(responsebody).to include(titulo)
end

Quando("após a edição do material com dados inválidos as alterações são salvas") do
  @CadastroMaterial_page.edita_Material
  embed(@CadastroMaterial_page.print, "image/png", "Screenshot")
end

Então("o material não deverá ser salvo e não deverá ser enviado para a central de exibição") do
  pending
end