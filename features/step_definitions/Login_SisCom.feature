#language:pt
#encoding: utf-8

@Login
Funcionalidade: Login SisCom

  Login com e sem falha no sistema siscom
  @Login_sucesso
 Cenário: Login com sucesso
    Dado que eu acesse a página principal
    Quando realizar o login com email "gisele.meta" e senha "mEgI0202"
    Então mostrará o usuário logado ""


  Esquema do Cenário: Login com falha
  Dado que eu acesse a página principal
  Quando realizar o login com email "<email>" e senha "<senha>"
  Então mostrará a mensagem usuário ou senha inválidos
    Exemplos:
      |email        |senha         |
      |gisele.meta  |              |
      |             |MeGi2020      |