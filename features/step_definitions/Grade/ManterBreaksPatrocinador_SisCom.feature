#language:pt
#encoding: utf-8

@Front @Grade @Manter_Breaks_Patrocinador
Funcionalidade: PBAS

  Como usuário do Opec
  Quero manter break de patrocinador (Associado a Projeto)
  Para manter a sua estrutura atualizada conforme a necessidade da equipe de OPEC e Marketing
  E enviá-la para a Central de Exibição (CE)

  Contexto:
    Dado que eu esteja logado no Siscom
    E possua permissão de acesso ao PBAS
    E <Programa> conste na Programação do dia <Data>


  @teste
  Esquema do Cenário: Associar Projeto ao Break
    Quando acesso Entrega → Programação → Grade de Programação Básica
    E seleciono "<Data>"
    E em abrangência informo "<Canal>"
    E informo "<Rede>"
    E informo "<Abrangência>"
    E aciono Ok
    E seleciono "<Canal/Exibidora>"
    E aciono Pesquisar
    E na grade aciono Editar referente ao "<Programa>"
    E no "<Nº break>" aciono Associar Projeto
    E pesquiso pelo "<Projeto>"
    E aciono "<Projeto>"
    E informo em Aplicada a partir de "<Data inicial>" até "<Data final>"
    E aciono Salvar breaks
    Então é exibida mensagem de alteração realizada com sucesso
  Exemplos:

  | Data | Canal | Abrangência | Canal/Exibidora | Programa | Nº break | Projeto | Data inicial|Data final |
  | 11/05/2020 | TV ABERTA | NAC | NAC | NBRA | 5 | FUTEBOL | 03/12/2020 | 03/12/2020 |


#  Critério de Aceite:
#
#  Realizar processo de Associação de Projeto ao break de Programa na PBAS;
#
#  Realizar o envio dos dados atualizados dos breaks para a Central de Exibição;
#
#  Realizar o envio dos dados do <Projeto> associado ao break do Programa;



  Esquema do Cenário: Desassociar Projeto ao Break

    Quando acesso Entrega → Programação → Grade de Programação Básica

    E seleciono <Data>

    E em abrangência informo <Canal>

    E informo <Rede>

    E informo <Abrangência>

    E aciono Ok

    E seleciono <Canal/Exibidora>

    E aciono Pesquisar

    E na grade aciono Editar referente ao <Programa>

    E no <Nº break> aciono X para cancelar Associação do <Projeto>

    E informo em Aplicada a partir de <Data inicial> até <Data final>

    E aciono Salvar breaks

    Então é exibida mensagem de alteração realizada com sucesso



  Exemplos:

  | Data | Canal | Abrangência | Canal/Exibidora | Programa | Nº break | Projeto | Data inicial|Data final |

  | 11/05/2020 | TV ABERTA | NAC | NAC | NBRA | 5 | FUTEBOL | 03/12/2020 | 03/12/2020 |



#  Critério de Aceite:
#
#  Realizar processo de desassociação de Projeto ao break de Programa na PBAS;
#
#  Realizar o envio dos dados atualizados dos breaks para a Central de Exibição;
#
#  Não enviar mais os dados do <Projeto> desassociado ao break do Programa;