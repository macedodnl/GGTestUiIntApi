Dado("que eu acesse a página de pesquisa de rp") do
  @login_page.visitar
  @login_page.setuser("gisele.meta")
  @login_page.setpass("MeGi2020")
  @login_page.autenticar
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_IncluirRp
end

Quando("efetuo uma busca por um rp válido") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("após a cópia e configuração com dados válidos") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("a inclusao da linha as alterações são salvas") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("o rp deverá ser salvo e enviado para a central de exibição") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("o rp deverá ser salvo mas não deverá ser enviado para a central de exibição") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("a exclusao da linha as alterações são salvas") do
  pending # Write code here that turns the phrase above into concrete actions
end