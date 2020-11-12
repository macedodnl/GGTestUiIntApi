# require_relative '../support/pages/ClassLoginPage.rb'

Given(/^que eu acesse a página principal$/) do
  @login_page.visitar
end

When(/^realizar o login com email "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
  @login_page.setuser(arg1)
  @login_page.setpass(arg2)
  @login_page.autenticar
end

When("realizar o login email {string} e senha {string}") do |arg1, arg2|
  @login_page.setuser(arg1)
  @login_page.setpass(arg2)
  @login_page.autenticar
end

When("que eu acesse a página principal sem permissão para visualizar o modulo de reserva") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("mostrará o usuário logado {string}") do |nome_usuario|
  @home_page.visitar_home
  sleep 3
  embed(@home_page.print, "image/png", "Screenshot")
end

Then("mostrará a mensagem usuário ou senha inválidos") do
  sleep 3
  @login_page.aceite
  embed(@login_page.print, "image/png", "Screenshot")
end
