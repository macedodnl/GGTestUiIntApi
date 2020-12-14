require 'selenium-webdriver'

class IncluiProgramaPage < BaseTest
  include Selenium::WebDriver::Support

  def map
    sleep 1
    #mapeamento de elementos de pagina
    @@divPrincipal = @driver.find_element(:id, 'ptApp:pnbPrincipalRP::content')
    @@tabConsulta = @@divPrincipal.find_element(:id, 'ptApp:pglCabecalho')
    @@inseriMn = @@divPrincipal.find_element(:link, 'Mnemônico')

  end

  #Frame foco
  def sel_Iframe
    @@outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
    iframe = @@outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame iframe
  end

  def sel_frame
    frame = @driver.find_element(:name, 'conteudo')
    @@outerdiv = @driver.find_element(:id, 'outerDiv')
    @driver.switch_to.frame frame
  end


  def inserir_Mnemonico(op)
    sel_frame
    # map
    # @@inseriMn.send_keys op, :return
  end



end