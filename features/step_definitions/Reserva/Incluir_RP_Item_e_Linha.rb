Dado("que eu esteja logado no Siscom acesse a Reserva, para incluir um rp") do
  @login_page.visitar
  @login_page.loginPadrao
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_IncluirRp
end

Quando("preencho o formulário na aba de caracterização com Característica de Compra {string}, Produto do Portfolio {string}, Contato de Atendimento {string}, Mes ano {string},  Cliente {string}, Agencia {string}, Operacao {string},  referência do mapa {string}") do |caracteristica_compra, produto_portfolio, contato_atendimento, mes_ano, cliente, agencia, operacao, refmapa|
  @ManterRp_page.sel_Iframe
  @ManterRp_page.sel_CaracteristicaCompra(caracteristica_compra)
  @ManterRp_page.sel_ProdutoPortfolio(produto_portfolio)
  @ManterRp_page.sel_ContatoAtendimento(contato_atendimento)
  @ManterRp_page.insere_MesAno(mes_ano)
  @ManterRp_page.insere_Cliente(cliente)
  @ManterRp_page.insere_Agencia(agencia)
  @ManterRp_page.insere_Operacao(operacao)
  @ManterRp_page.insere_RefMapa(refmapa)
  embed(@ManterRp_page.print, "image/png", "Screenshot")
end

Quando("aciono na aba Abrangência e") do
  @ManterRp_page.sel_TabAbrangencia
  sleep 5
  @ManterRp_page.ad_Abrangencia("gn6")
  @ManterRp_page.sel_TabVeiculacao
  embed(@ManterRp_page.print, "image/png", "Screenshot")
end

Quando("aciono Incluir") do
  @ManterRp_page.ad_Programa("6N21H")
  # @ManterRp_page.sel_Modalidade("CPT")
  # @ManterRp_page.sel_Duracao("20")
  # @ManterRp_page.sel_Incluir
  embed(@ManterRp_page.print, "image/png", "Screenshot")
end

Então("RP é atualizado com sucesso") do
  pending # Write code here that turns the phrase above into concrete actions
end