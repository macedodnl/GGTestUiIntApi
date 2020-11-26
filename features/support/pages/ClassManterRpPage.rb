require 'selenium-webdriver'

class ManterRpPage < BaseTest
  include Selenium::WebDriver::Support


  def map
    sleep 1
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
    sleep 1
  end

  def sel_ProdutoPortfolio(op)
    map
    @@opProdutoPortfolio = Selenium::WebDriver::Support::Select.new(@@ProdutoPortfolio)
    @@opProdutoPortfolio.select_by(:value, op)
    sleep 1
  end

  def sel_ContatoAtendimento(op)
    map
    @@ContatoAtendimento.send_keys op, :return
    sleep 2
  end

  def insere_MesAno(mesano)
    map
    @@MesAno.send_keys mesano, :return
  end

  def insere_Cliente(cliente)
    map
    @@Cliente.send_keys cliente, :return
    sleep 5
    @@MesAno.click
  end

  def insere_Agencia(agencia)
    map
    @@Agencia.click
    @@Agencia.send_keys agencia, :return
    sleep 5
    :return
  end

  def insere_Operacao(operacao)
    map
    @@Operacao.send_keys operacao, :return
    sleep 5

  end

  def insere_RefMapa(refmapa)
    map
    @@RefMapa.send_keys refmapa, :return
    :return
  end

  def sel_TabAbrangencia
    map
    @@abaAbrangencia.click
    sleep 12
  end

end

