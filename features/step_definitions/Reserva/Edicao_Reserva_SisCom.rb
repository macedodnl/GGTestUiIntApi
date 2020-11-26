Dado("que eu acesse a página de pesquisa de rp") do
  @login_page.visitar
  @login_page.loginPadrao
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_IncluirRp
end

Quando("efetuo uma busca por um rp válido") do
  @ManterRp_page.sel_Iframe
  @ManterRp_page.busca_Rp
end

Quando("edito o rp e salvo") do
  @ManterRp_page.edita_Rp
  embed(@home_page.print, "image/png", "Screenshot")
end

Então("o rp deverá ser atualizado e enviado para a central de exibição") do
  @ManterRp_page.valida_msg
  @result = BaseTest.carregarUltimaAlteracaoReserva("1877061", "1")
  embed(@home_page.print, "image/png", "Screenshot")
end