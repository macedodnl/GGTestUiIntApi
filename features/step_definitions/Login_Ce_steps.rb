Dado("que eu acesse a página principal da central de exibição") do
  @loginCe_page.visitar
  embed(@loginCe_page.print, "image/png", "Screenshot")
end

Quando("realizar o login com usuário {string}, senha {string} e token {string}") do |user, pass, token|
  @loginCe_page.setuser(user)
  @loginCe_page.setpass(pass)
  @loginCe_page.settoken(token)
  @loginCe_page.autenticar
  embed(@loginCe_page.print, "image/png", "Screenshot")
end

Então("exibirá a página home do usuário logado {string}") do |user|
  userlogado = @homeCe_page.getuser
  userlogado.eql? user
  embed(@loginCe_page.print, "image/png", "Screenshot")
end

Então("exibirá a {string} de campo obrigatório") do |msg|
  alert = @loginCe_page.alertNull
  alert.eql? msg
  embed(@loginCe_page.print, "image/png", "Screenshot")
end

Então("exibirá a {string}  de campo inválido") do |msg|
  alert = @loginCe_page.alertaPassUser
  alert.eql? msg
  embed(@loginCe_page.print, "image/png", "Screenshot")
end