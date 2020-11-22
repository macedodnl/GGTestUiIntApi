Dado("que eu acesse a página de pesquisa de rp") do
  @login_page.visitar
  @login_page.setuser("gisele.meta")
  @login_page.setpass("MeGi2020")
  @login_page.autenticar
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_IncluirRp
end

Quando("efetuo uma busca por um rp válido") do
  @ManterRp_page.busca_Rp
end

Quando("edito o rp e salvo") do
  @ManterRp_page.edita_Rp
  embed(@home_page.print, "image/png", "Screenshot")
end

Então("o rp deverá ser atualizado e enviado para a central de exibição") do
  @ManterRp_page.valida_msg
  embed(@home_page.print, "image/png", "Screenshot")
end