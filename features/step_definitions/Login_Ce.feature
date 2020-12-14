#language:pt
#encoding: utf-8

@Login @Login_Ce
Funcionalidade: Login Central de exibição

  Login com e sem falha no sistema siscom
  @Login_Ce_Sucesso
  Cenário: Login com sucesso
    Dado que eu acesse a página principal da central de exibição
    Quando realizar o login com usuário "globo", senha "12345" e token "12345"
    Então exibirá a página home do usuário logado "Fulano de Tal Silva"

  @Login_Ce_Falha @Login_Ce_Dados_Null
  Esquema do Cenário: Login com falha sem informar dados
    Dado que eu acesse a página principal da central de exibição
    Quando realizar o login com usuário "<email>", senha "<senha>" e token "<token>"
    Então exibirá a "<mensagem>" de campo obrigatório
    Exemplos:
      |email  |senha  | token |mensagem           |
      |globo  |       |12345  |Campo Obrigatório! |
      |       |12345  |12345  |Campo Obrigatório! |
      |globo  |12345  |       |Campo Obrigatório! |

  @Login_Ce_Falha @Login_Ce_Dados_Invalidos
  Esquema do Cenário: Login com falha sem informar dados
    Dado que eu acesse a página principal da central de exibição
    Quando realizar o login com usuário "<email>", senha "<senha>" e token "<token>"
    Então exibirá a "<mensagem>"  de campo inválido
    Exemplos:
      |email  |senha  | token |mensagem                 |
      |glob   |12345  |12345  |Usuário ou senha errada  |
      |globo  |1234   |12345  |Usuário ou senha errada  |
#      |globo  |12345  |2      |Token inválido         |