Dado("que eu acesse a página de pesquisas de materias") do
  @login_page.visitar
  @login_page.setuser("gisele.meta")
  @login_page.setpass("MeGi2020")
  @login_page.autenticar
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_MaterialTradicional
end

Quando("efetuo uma busca por um material válido") do
  @CadastroMaterial_page.busca_Material
end

Quando("após a edição do material com dados válidos as alterações são salvas") do
  @CadastroMaterial_page.edita_Material
end

Então("o material deverá ser salvo e enviado para a central de exibição") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("após a edição do material com dados inválidos as alterações são salvas") do
  @CadastroMaterial_page.edita_Material
end

Então("o material não deverá ser salvo e não deverá ser enviado para a central de exibição") do
  pending # Write code here that turns the phrase above into concrete actions
end