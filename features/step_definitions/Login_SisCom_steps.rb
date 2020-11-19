Given(/^que eu acesse a página principal$/) do
  @login_page.visitar
end

When(/^realizar o login com email "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
  @login_page.setuser(arg1)
  @login_page.setpass(arg2)
  @login_page.autenticar
end


Then("mostrará o usuário logado {string}") do |nome_usuario|
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_GradeBasica
  embed(@home_page.print, "image/png", "Screenshot")
end

Then("mostrará a mensagem usuário ou senha inválidos") do
  @login_page.aceite
  embed(@login_page.print, "image/png", "Screenshot")
end
