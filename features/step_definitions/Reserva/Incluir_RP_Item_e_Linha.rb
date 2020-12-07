Dado("que eu esteja logado no Siscom acesse a Reserva, para incluir um rp") do
  @loginSisCom_page.visitar
  @loginSisCom_page.loginPadrao
  @homeSisCom_page.visitar_home
  sleep 3
  @MenuSisCom_page.sel_IncluirRp
end

Quando("preencho o formulário na aba de caracterização com Característica de Compra {string}, Produto do Portfolio {string}, Contato de Atendimento {string}, Mes ano {string},  Cliente {string}, Agencia {string}, Operacao {string},  referência do mapa {string}") do |caracteristica_compra, produto_portfolio, contato_atendimento, mes_ano, cliente, agencia, operacao, refmapa|
  @ManterRpSisCom_page.sel_Iframe
  @ManterRpSisCom_page.sel_CaracteristicaCompra(caracteristica_compra)
  @ManterRpSisCom_page.sel_ProdutoPortfolio(produto_portfolio)
  @ManterRpSisCom_page.sel_ContatoAtendimento(contato_atendimento)
  @ManterRpSisCom_page.insere_MesAno(mes_ano)
  @ManterRpSisCom_page.insere_Cliente(cliente)
  @ManterRpSisCom_page.insere_Agencia(agencia)
  @ManterRpSisCom_page.insere_Operacao(operacao)
  @ManterRpSisCom_page.insere_RefMapa(refmapa)
  embed(@ManterRpSisCom_page.print, "image/png", "Screenshot")
end

Quando("aciono na aba Abrangência e informo a estrutura de mercado {string}") do |canal|
  @ManterRpSisCom_page.sel_TabAbrangencia
  # sleep 5
  @ManterRpSisCom_page.ad_Abrangencia(canal)
  embed(@ManterRpSisCom_page.print, "image/png", "Screenshot")
end

Quando("aciono aba Veiculações e informo em Inclusão e Disponibilidade o Mnemônico de Programa {string}, a Modalidade {string}, o Material {string}, a Duração {int} e a Quantidade {int} no Dia {string}") do |mnemonico, modalidade, material, duracao, quantidade, dia|
  @ManterRpSisCom_page.sel_TabVeiculacao
  @ManterRpSisCom_page.ad_Programa(mnemonico)
  @ManterRpSisCom_page.sel_Modalidade(modalidade)
  @ManterRpSisCom_page.sel_Duracao(duracao)
  @ManterRpSisCom_page.sel_Dia(quantidade, dia)
  embed(@ManterRpSisCom_page.print, "image/png", "Screenshot")
end

Quando("aciono Incluir") do
  @ManterRpSisCom_page.sel_Incluir
  embed(@ManterRpSisCom_page.print, "image/png", "Screenshot")
end

Então("RP é atualizado com sucesso e evniado para CE") do
  rp = @ManterRpSisCom_page.get_rp
  # @result = BaseTest.carregarUltimaAlteracaoReserva(rpidunico, "1")
  embed(@ManterRpSisCom_page.print, "image/png", "Screenshot")
end