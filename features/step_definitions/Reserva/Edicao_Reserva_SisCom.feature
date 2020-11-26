#language:pt
#encoding: utf-8
#-10dias
@Front @Reserva
Funcionalidade: Reserva

  Edita reserva com envio para central de exibição
  @Edita_Reserva_envia
  Cenário: Enviar rp ediado para Central de exibição
    Dado que eu acesse a página de pesquisa de rp
    Quando efetuo uma busca por um rp válido
    Quando edito o rp e salvo
    Então o rp deverá ser atualizado e enviado para a central de exibição
