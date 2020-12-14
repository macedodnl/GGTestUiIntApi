Given(/^que eu acesse a página principal$/) do
  @loginSisCom_page.visitar
  embed(@loginSisCom_page.print, "image/png", "Screenshot")
end

When(/^realizar o login com email "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
  @loginSisCom_page.setuser(arg1)
  @loginSisCom_page.setpass(arg2)
  @loginSisCom_page.autenticar
  embed(@loginSisCom_page.print, "image/png", "Screenshot")
end


Then("mostrará o usuário logado {string}") do |nome_usuario|
  @homeSisCom_page.visitar_home
  sleep 3
  embed(@homeSisCom_page.print, "image/png", "Screenshot")
end

Then("mostrará a mensagem usuário ou senha inválidos") do
  embed(@loginSisCom_page.print, "image/png", "Screenshot")
end
