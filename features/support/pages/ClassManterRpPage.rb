require 'selenium-webdriver'

class ManterRpPage < BaseTest
  include Selenium::WebDriver::Support


  def map
    #mapeamento de elementos de pagina
    @@divPrincipal = @driver.find_element(:id, 'ptApp:pnbPrincipalRP::content')
    @@tabConsulta = @@divPrincipal.find_element(:id, 'ptApp:pglCabecalho')
    @@inserirrp = @@tabConsulta.find_element(:id, 'ptApp:txtCodRP::content')
    @@divDadosRp = @@divPrincipal.find_element(:id, 'ptApp:ptdDadosRP')
    @@abaAbrangencia = @@divDadosRp.find_element(:id, 'ptApp:sdiAbrangenciaRP::disAcr')
    @@CaracteristicaCompra = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:selCaracteristica::content')
    @@ProdutoPortfolio = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:selPortfolio::content')
    @@ContatoAtendimento = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtContato::content')
    @@MesAno = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtVeiculacao::content')
    @@Cliente = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtCliente::content')
    @@Agencia = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtAgencia::content')
    @@Operacao = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtTipoOperacao::content')
    @@RefMapa = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtRefMapa::content')
    @@tabObs = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtObs')
    @@textoObs = @@tabObs.find_element(:id, 'ptApp:rgCrtrz:txtObs::content')
    @@tabBotoes = @@divPrincipal.find_element(:id, 'ptApp:pgBotoes')
    @@btnsalvar = @@tabBotoes.find_element(:id, 'ptApp:cilSalvar')
    @@msg = @driver.find_element(:id, 'ptApp:svMensagens:pglMensagem')
  end


  def sel_Iframe
    @@outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
    iframe = @@outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame iframe
  end

  def busca_Rp
    map
    @driver.action.move_to(@@inserirrp).perform
    @@inserirrp.click
    @@inserirrp.send_keys "626633", :return
    sleep 10
  end

  def edita_Rp
    map
    @driver.action.move_to(@@textoObs).perform
    @@textoObs.click
    @@textoObs.clear
    @@textoObs.send_keys "NOVA OBS ENVIADA PELO ROBO DE AUTOMACAO DE TESTES", :return
    @driver.action.move_to(@@btnsalvar).perform
    @@btnsalvar.click
    sleep 12
  end

  def valida_msg
    map
    @driver.action.move_to(@@msg).perform
  end

  def sel_CaracteristicaCompra(op)
    map
    @@opCaracteristicaCompra = Selenium::WebDriver::Support::Select.new(@@CaracteristicaCompra)
    @@opCaracteristicaCompra.select_by(:value, op)
    sleep 0.5
  end

  def sel_ProdutoPortfolio(op)
    map
    @@opProdutoPortfolio = Selenium::WebDriver::Support::Select.new(@@ProdutoPortfolio)
    @@opProdutoPortfolio.select_by(:value, op)
    sleep 0.5
  end

  def sel_ContatoAtendimento(op)
    map
    @driver.action.move_to(@@ContatoAtendimento).perform
    @@ContatoAtendimento.click
    @@ContatoAtendimento.send_keys op, :return
    sleep 0.5
  end

  def insere_MesAno(mesano)
    map
    @driver.action.move_to(@@MesAno).perform
    @@MesAno.click
    @@MesAno.send_keys mesano, :return
    sleep 0.5
  end

  def insere_Cliente(cliente)
    map
    @driver.action.move_to(@@Cliente).perform
    @@Cliente.click
    @@Cliente.send_keys cliente, :return
    sleep 0.5
  end

  def insere_Agencia(agencia)
    map
    @driver.action.move_to(@@Agencia).perform
    @@Agencia.click
    @@Agencia.send_keys agencia, :return
    sleep 0.5
  end

  def insere_Operacao(operacao)
    map
    @driver.action.move_to(@@Operacao).perform
    @@Operacao.click
    @@Operacao.send_keys operacao, :return
    :tab
    sleep 0.3
  end

  def insere_RefMapa(refmapa)
    sleep 2
    map
    @driver.action.move_to(@@RefMapa).perform
    @@RefMapa.click
    @@RefMapa.send_keys refmapa, :return
    sleep 0.3
  end

  def sel_TabAbrangencia
    map
    @driver.action.move_to(@@abaAbrangencia).perform
    @@abaAbrangencia.click
    sleep 12
  end

end

