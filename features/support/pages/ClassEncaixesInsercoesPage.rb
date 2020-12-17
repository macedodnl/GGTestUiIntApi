require 'selenium-webdriver'

class EncaixeInsercoesPage < BaseTest

  def map
    @@linkExec = @driver.find_element(:css, 'div[aria-label="Execultar"]')
    # @@divScripts = @driver.find_element(:text, 'isc_DU')
    # @@linkAux = @driver.find_element(:text, 'Geral')
    @@linkAux = @driver.find_element(:css, 'tr[aria-posinset="2"]')
    @@linkGeral = @@linkAux.find_element(:css, 'div[role="presentation"]')
  end

  def exec
    map
    @@linkExec.click
  end

  def sel_Geral
    @driver.action.move_to(@@linkGeral).perform
    @@linkAux.click
  end

  # def sel_Iframe
  #   base = @driver.find_element(:id, 'root')
  #   iframe = base.find_element(:id, 'app-v1')
  #   @driver.switch_to.frame iframe
  # end


end