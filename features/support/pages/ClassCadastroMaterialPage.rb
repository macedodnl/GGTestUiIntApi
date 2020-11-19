require 'selenium-webdriver'

class CadastroMaterialPage < BaseTest

  def sel_Iframe
  #mapeamento de elementos de pagina
      outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
      iframe = outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame iframe
    return iframe
  end

  def busca_Material
    #frame foco
    sel_Iframe

    #mapeamento de elementos de pagina
    form = @driver.find_element(:xpath, '/html/body/form')
    tabGeral = form.find_element(:xpath, '/html/body/form/table')
    tabMain = tabGeral.find_element(:class, 'tableMain')
    material = tabMain.find_element(:class, 'textField')

    #acoes
    @driver.action.move_to(material).perform
    material.click
    material.send_keys "220554", :return
    sleep 12
  end

  def edita_Material
    #mapeamento de elementos de pagina
    form = @driver.find_element(:xpath, '/html/body/form[2]')
    tabGeral = form.find_element(:xpath, '/html/body/form[2]/table')
    tabAgencia = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]')
    tabProdutora = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[5]')
    tabTitulo = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[6]')
    tabDuracao = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[7]')
    tabSubCategoria = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[8]')
    tabPrestacaoServicos = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[9]')
    tabDtRecebimento = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[11]')
    tabObservacoes = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[12]')
    tabBotoes = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[13]')

    #acoes
    @driver.action.move_to(tabAgencia).perform
    tabAgencia.click
    @driver.action.move_to(tabProdutora).perform
    tabProdutora.click
    @driver.action.move_to(tabTitulo).perform
    tabTitulo.click
    @driver.action.move_to(tabDuracao).perform
    tabDuracao.click
    @driver.action.move_to(tabSubCategoria).perform
    tabSubCategoria.click
    @driver.action.move_to(tabPrestacaoServicos).perform
    tabPrestacaoServicos.click
    @driver.action.move_to(tabDtRecebimento).perform
    tabDtRecebimento.click
    @driver.action.move_to(tabObservacoes).perform
    tabObservacoes.click
    tabObservacoes.send_keys "obs", :return
    @driver.action.move_to(tabBotoes).perform
    tabBotoes.click

    sleep 12
  end







end
