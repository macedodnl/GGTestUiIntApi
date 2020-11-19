require 'selenium-webdriver'

class ManterRpPage < BaseTest

  def sel_Iframe
    #mapeamento de elementos de pagina
    outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
    iframe = outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame iframe
    return iframe
  end

  def busca_Rp
    #frame foco
    sel_Iframe

    #mapeamento de elementos de pagina
    form = @driver.find_element(:xpath, '/html/body/form')
    tabGeral = form.find_element(:xpath, '/html/body/form/table')
    tabMain = tabGeral.find_element(:class, 'tableMain')
    rp = tabMain.find_element(:class, 'textField')

    #acoes
    @driver.action.move_to(rp).perform
    rp.click
    rp.send_keys "626518", :return
    sleep 12
  end

  def edita_Caracterizacao
    #mapeamento de elementos de pagina
    form = @driver.find_element(:xpath, '/html/body/form[2]')
    tabGeral = form.find_element(:xpath, '/html/body/form[2]/table')
    tabSuperior = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[3]')
    sel_CaracteriscitaCompra = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[3]td/1')
    sel_ProdutoPortifolio = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[3]td/2')
    sel_ContratoAtendimento = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/1')
    sel_ContratoRemuneracao = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/2')
    set_Mes = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/5')
    set_Cliente = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/6')
    set_DocCliente = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/7')
    set_Agencia = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/8')
    set_DocAgencia = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/9')
    set_SubCategoria = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/10')
    set_Obs = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[4]td/11')

    #acoes
    @driver.action.move_to(sel_CaracteriscitaCompra).perform
    sel_CaracteriscitaCompra.click
    @driver.action.move_to(sel_ProdutoPortifolio).perform
    sel_ProdutoPortifolio.click
    @driver.action.move_to(sel_ContratoAtendimento).perform
    sel_ContratoAtendimento.click
    @driver.action.move_to(sel_ContratoRemuneracao).perform
    sel_ContratoRemuneracao.click
    @driver.action.move_to(set_Mes).perform
    set_Mes.click
    @driver.action.move_to(set_Cliente).perform
    set_Cliente.click
    @driver.action.move_to(set_DocCliente).perform
    set_DocCliente.click
    @driver.action.move_to(set_Agencia).perform
    set_Agencia.click
    @driver.action.move_to(set_DocAgencia).perform
    set_DocAgencia.click
    @driver.action.move_to(set_SubCategoria).perform
    set_SubCategoria.click
    @driver.action.move_to(set_Obs).perform
    set_Obs.click
    set_Obs.send_keys "obs", :return
    @driver.action.move_to(tabBotoes).perform
    tabBotoes.click

    sleep 12
  end

  def informa_Abrangencia
    #mapeamento de elementos de pagina
    form = @driver.find_element(:xpath, '/html/body/form[3]')
    tabGeral = form.find_element(:xpath, '/html/body/form[3]/table[1]')
    tabEsrutura = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[3]')
    open_Euro = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[3]td/1')
    sel_GN6 = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[3]td/1')
    inclui_Abrangencia = tabSuperior.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[3]td/1')
    #acoes
    @driver.action.move_to(open_Euro).perform
    open_Euro.click
    @driver.action.move_to(sel_GN6).perform
    sel_GN6.click
    @driver.action.move_to(inclui_Abrangencia).perform
    inclui_Abrangencia.click
  end

  def informa_Veiculacao
    #mapeamento de elementos de pagina
    form = @driver.find_element(:xpath, '/html/body/form[2]')
    tabGeral = form.find_element(:xpath, '/html/body/form[2]/table[1]')
    tabInclusaoDisponibilidade = tabGeral.find_element(:xpath, '/html/body/form[2]/table/tbody/tr[1]/td/table[5]')
    sel_Prog = tabInclusaoDisponibilidade.find_element(:xpath, '//*[@id="ptApp:rgVeic:tbProgr::db"]/table')
    sel_Moalidade = tabInclusaoDisponibilidade.find_element(:id, 'ptApp:rgVeic:iptModalidade::content')
    sel_Material = tabInclusaoDisponibilidade.find_element(:id, 'ptApp:rgVeic:selMat::content')
    sel_Mapa = tabInclusaoDisponibilidade.find_element(:xpath, '//*[@id="ptApp:rgVeic:pgCalen"]/tbody/tr/td')
    btn_incluir = tabSuperior.find_element(:id, 'ptApp:rgVeic:imgInc')

    #acoes
    @driver.action.move_to(sel_Prog).perform
    sel_Prog.click
    @driver.action.move_to(sel_Moalidade).perform
    sel_Moalidade.click
    @driver.action.move_to(sel_Material).perform
    sel_Material.click
    driver.action.move_to(sel_Mapa).perform
    sel_Mapa.click
    driver.action.move_to(btn_incluir).perform
    btn_incluir.click
  end






end

