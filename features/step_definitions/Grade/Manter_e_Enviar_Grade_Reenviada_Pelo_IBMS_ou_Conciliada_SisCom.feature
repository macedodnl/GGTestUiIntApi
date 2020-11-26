#language:pt
#encoding: utf-8

@Front @Grade @Enviar_Grade_Reenviada_Pelo_IBMS_ou_Conciliada
Funcionalidade: PBAS

  Como usuário do Opec

  Quero reenviar grade no Conciliação

  Para que a mesma seja atualizada conforme últimas alterações realizadas na Configuração de Programa, PBAS ou IBMS

  E enviadas para a Central de Exibição



  Contexto:

    Dado que eu esteja logado no Siscom

    E possua permissão de acesso ao Conciliação

    E IBMS tenha enviado uma Grade de <Sinal> com<Data> para Conciliação



  Esquema do Cenário: Reenviar Grade

    E acesso Conciliação http://siscomconciliacaograde.stg.negocios.tvglobo.com.br/conciliation

    E pesquiso por <Sinal>

    E pesquiso por <Data>

    E aciono o Ver Histórico na coluna “Data/Hora Recebimento”

    Quando aciono Reenviar na coluna “Ações”

    Então grade é reenviada para o próprio Conciliação

    E exibida mensagem “Grade reenviada com sucesso.”



#  Critério de Aceite:
#
#  Grade é reenviada para o Conciliação;
#
#  Grade é reconciliada e reenviada para o IBMS;
#
#  Grade reconciliada é enviada novamente atualizada para a Central de Exibição;
#
#  Para envio da Grade deve ser validado ao Parâmetro de Antecipação (se grade estiver dentro do período da data atual e dias (definidos por parâmetro) da data futura/antecipação;
#
#    Dados da grade são enviados para a Central de Exibição validando ao Parâmetro de Implantação (envia apenas se respectivo Sinal/Canal/Exibidora estiver com o Parâmetro de Implantação “Ativo”);



  Exemplos:

  | Sinal | Data |

  | GN6 | 06/11/2020 |

#  | RED  | 06/11/2020 |
#
#  | RJ     | 06/11/2020 |
#
#  | GN1  | 06/11/2020 |
#
#  | GN2 | 06/11/2020 |
#
#  | GN5 | 06/11/2020 |
#
#  | GN8 | 06/11/2020 |