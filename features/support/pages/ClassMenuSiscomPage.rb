require 'selenium-webdriver'

class MenuSisComPage < BaseTest

  def sel_Frame
    @driver.switch_to.frame @driver.find_element(name: 'conteudo')
  end

  def sel_Menu
    menuabsoluto = @driver.find_element(id: 'menu')
    linhaMenu = menuabsoluto.find_element(id: 'menubar')
    return linhaMenu
  end

  def sel_IncluirRp
    #frame foco
    sel_Frame

    #mapeamento de elementos de pagina
    menuAdmVendas = sel_Menu.find_element(:xpath, './/*[contains(., "Administra Vendas        ")]')
    opRegistroCompra = menuAdmVendas.find_element(:class, 'menu').find_element(:xpath, '//*[@id="menubar"]/td[5]/table/tbody/tr[7]')
    opIncluirRp = @driver.find_element(:xpath, '/html/body/table/tbody/tr/td[5]/table/tbody/tr[7]/td[2]/table/tbody/tr[1]')

    #acoes
    @driver.action.move_to(menuAdmVendas).perform
    menuAdmVendas.click
    @driver.action.move_to(opRegistroCompra).perform
    opRegistroCompra.click
    opIncluirRp.click
    # sleep 5
  end

  def sel_GradeBasica
    #frame foco
    sel_Frame

    #mapeamento de elementos de pagina
    menuEntrega = sel_Menu.find_element(:xpath, './/*[contains(., "Entrega        ")]')
    opProgramacao = menuEntrega.find_element(:class, 'menu').find_element(:class, 'sub')
    tabProgramacao = opProgramacao.find_element(:id, 'margemdosubs')
    opGradeBasica = tabProgramacao.find_element(:xpath, '//*[@id="341"]')

    #acoes
    menuEntrega.click
    @driver.action.move_to(opProgramacao).perform
    @driver.action.move_to(opGradeBasica).perform
    opGradeBasica.click
    sleep 12
  end

  def sel_MaterialTradicional
    #frame foco
    sel_Frame

    #mapeamento de elementos de pagina
    menuEntrega = sel_Menu.find_element(:xpath, './/*[contains(., "Entrega        ")]')
    opControleMateriais = menuEntrega.find_element(:class, 'menu').find_element(:xpath, '//*[@id="menubar"]/td[6]/table/tbody/tr[7]')
    opRelatorioConsulta = @driver.find_element(:xpath, '/html/body/table/tbody/tr/td[6]/table/tbody/tr[7]/td[2]/table/tbody/tr[9]')
    opMaterialTradicial = @driver.find_element(:xpath, '/html/body/table/tbody/tr/td[6]/table/tbody/tr[7]/td[2]/table/tbody/tr[1]')
    tabelaManterDadosbasicos = opMaterialTradicial.find_element(:id, 'margemdosubs')

    #acoes
    @driver.action.move_to(menuEntrega).perform
    menuEntrega.click
    @driver.action.move_to(opControleMateriais).perform
    opControleMateriais.click
    @driver.action.move_to(opMaterialTradicial).perform
    opMaterialTradicial.click
    @driver.action.move_to(tabelaManterDadosbasicos).perform
    tabelaManterDadosbasicos.click
    sleep 4
  end

end
