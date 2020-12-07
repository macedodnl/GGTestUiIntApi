require 'selenium-webdriver'

class CadastroMaterialSisComPage < BaseTest
  include Selenium::WebDriver::Support

  def map
    sleep 1
    #mapeamento de elementos de pagina
    @@formDadosBasicos = @driver.find_element(:name, 'dadosbasicosmaterialtradicionalform')
    @@txtPontoVenda = @@formDadosBasicos.find_element(:name, 'pontoVenda')
    @@txtCliente = @@formDadosBasicos.find_element(:name, 'cliente')
    @@txtAgenciaVeiculacao = @@formDadosBasicos.find_element(:name, 'agenciaVeiculacao')
    @@txtEndereco = @@formDadosBasicos.find_element(:name, 'endereco')
    @@checkCrt = @@formDadosBasicos.find_element(:name, 'alternativaCpbCheck')
    @@txtTitulo = @@formDadosBasicos.find_element(:name, 'titulo')
    @@txtDuracao = @@formDadosBasicos.find_element(:name, 'duracao')
    @@checkHd = @@formDadosBasicos.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[7]/tbody/tr[2]/td[6]/input[2]')
    @@txtSubCategoria = @@formDadosBasicos.find_element(:name, 'item')
    @@txtMarca = @@formDadosBasicos.find_element(:name, 'marca')
    @@txtDtRecebimento = @@formDadosBasicos.find_element(:name, 'dataRecebimento')
  end

  def map_CodigoMaterial
    map
    @@idCodigoMaterial = @@formDadosBasicos.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[2]/tbody/tr[2]/td[3]/b')
  end

  #Frame foco
  def sel_Iframe
      outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
      iframe = outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame iframe
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
    sleep 12
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

  def sel_btnNovo
    @driver.execute_script ("javascript:menuCommand('novo');")
    sleep 5
  end

  def insere_PontoVenda(pontoVenda)
    map
    @@txtPontoVenda.send_keys pontoVenda, :tab
  end

  def insere_Cliente(cliente)
    @@txtCliente.send_keys cliente, :tab
  end

  def insere_AgenciaVeiculacao(agencia_veiculacao)
    @@txtAgenciaVeiculacao.send_keys agencia_veiculacao, :tab
  end

  def insere_Endereco(endereco)
    @@txtEndereco.send_keys endereco, :tab
  end

  def unCheck_Crt
    @@checkCrt.click
  end

  def insere_Titulo(titulo)
    @@txtTitulo.send_keys titulo, :tab
  end

  def insere_Duracao(duracao)
    @@txtDuracao.send_keys duracao, :tab
  end

  def check_HD
    @@checkHd.click
  end

  def insere_Subcategoria(subcategoria)
    @@txtSubCategoria.send_keys subcategoria, :tab
  end

  def insere_Marca(marca)
    @@txtMarca.send_keys marca, :tab
  end

  def insere_DtRecebimento(dtrecebimento)
    @@txtDtRecebimento.click
    @@txtDtRecebimento.clear
    @@txtDtRecebimento.send_keys dtrecebimento, :tab
  end

  def sel_btnIncluirDados
    sleep 2
    @driver.execute_script ("javascript:incluirTimeout('incluir');")
    sleep 7
  end

  def get_Material
    map_CodigoMaterial
    material = @@idCodigoMaterial.text
    return material
  end

  def sel_btnExcluir
    @driver.execute_script ("javascript:commandExcluir('excluir');")
    sleep 5
    alert = @driver.switch_to.alert
    alert.accept
    sleep 5
  end


end
