Dado("que eu acesse a página de pesquisa de rp") do
  @loginSisCom_page.visitar
  @loginSisCom_page.loginPadrao
  @homeSisCom_page.visitar_home
  sleep 3
  @MenuSisCom_page.sel_IncluirRp
end

Quando("efetuo uma busca por um rp válido") do
  @ManterRpSisCom_page.sel_Iframe
  @ManterRpSisCom_page.busca_Rp
end

Quando("edito o rp e salvo") do
  @ManterRpSisCom_page.edita_Rp
  embed(@homeSisCom_page.print, "image/png", "Screenshot")
end

Então("o rp deverá ser atualizado e enviado para a central de exibição") do
  @ManterRpSisCom_page.valida_msg
  @result = BaseTest.carregarUltimaAlteracaoReserva("1877061", "1")
  embed(@homeSisCom_page.print, "image/png", "Screenshot")
end