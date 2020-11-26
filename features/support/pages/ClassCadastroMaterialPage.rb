require 'selenium-webdriver'




class CadastroMaterialPage < BaseTest
  include Selenium::WebDriver::Support

  def sel_Iframe
  #mapeamento de elementos de pagina
      outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
      iframe = outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame iframe
    return iframe
  end

  def busca_Material (mat)
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
    material.send_keys mat, :return
    # sleep 12
  end

  def edita_Material(endereco, titulo, obs)

    #mapeamento de elementos de pagina
    form = @driver.find_element(:xpath, '/html/body/form[2]')
    tabGeral = form.find_element(:xpath, '/html/body/form[2]/table')
    tabAgenciaEndereco = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]')
    setEndereco = tabAgenciaEndereco.find_element(:name, 'endereco')
    tabProdutoramarca = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[5]')
    tabTitulo = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[6]')
    setTitulo = tabTitulo.find_element(:name, 'titulo')
    tabDuracao = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[7]')
    tabSubCategoria = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[8]')
    tabPrestacaoServicos = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[9]')
    tabDtRecebimento = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[11]')
    tabObservacoes = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[13]')
    setObservacoes = tabObservacoes.find_element(:name, 'observacao')
    selBarraBotes = tabTitulo.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[3]')
    selAtualizar = selBarraBotes.find_element(:name, 'linkAtualizar')

    #acoes
    @driver.action.move_to(tabAgenciaEndereco).perform
    @driver.action.move_to(setEndereco).perform
    setEndereco.click
    setEndereco.clear
    setEndereco.send_keys endereco, :return
    @driver.action.move_to(setTitulo).perform
    setTitulo.click
    setTitulo.clear
    setTitulo.send_keys titulo, :return
    @driver.action.move_to(tabObservacoes).perform
    @driver.action.move_to(setObservacoes).perform
    setObservacoes.click
    setObservacoes.clear
    setObservacoes.send_keys obs, :return
    @driver.action.move_to(selAtualizar).perform
    selAtualizar.click

    sleep 12
  end







end
