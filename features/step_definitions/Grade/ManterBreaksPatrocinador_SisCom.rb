Dado("que eu esteja logado no Siscom") do
  @loginSisCom_page.visitarPrd
  @loginSisCom_page.loginPadraoPrd
  # sleep 0.3
  @homeSisCom_page.visitar_home_Prd
  embed(@homeSisCom_page.print, "image/png", "Screenshot")
end

Dado("possua permissão de acesso ao PBAS") do
  @MenuSisCom_page.sel_GradeBasica
  embed(@MenuSisCom_page.print, "image/png", "Screenshot")
end

Dado("<Programa> conste na Programação do dia <Data>") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("acesso Entrega → Programação → Grade de Programação Básica") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("seleciono {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("em abrangência informo {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("informo {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("aciono Ok") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("aciono Pesquisar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("na grade aciono Editar referente ao {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("no {string} aciono Associar Projeto") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("pesquiso pelo {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("aciono {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("informo em Aplicada a partir de {string} até {string}") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Quando("aciono Salvar breaks") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("é exibida mensagem de alteração realizada com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end