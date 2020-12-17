require 'selenium-webdriver'

class RoteiroPage < BaseTest

  def map
    sleep 3
    @@btnGeraRoteiro = @driver.find_element(:id, 'isc_4Nicon')
  end

  def gera_Roteiro
    map
    @@btnGeraRoteiro.click
    sleep 3
  end

  def sel_Iframe
    base = @driver.find_element(:id, 'root')
    iframe = base.find_element(:id, 'app-v1')
    @driver.switch_to.frame iframe
  end


end