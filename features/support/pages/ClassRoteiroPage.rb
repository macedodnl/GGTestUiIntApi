require 'selenium-webdriver'

class RoteiroPage < BaseTest

  def map
    sleep 3
    @@btnGeraRoteiro = @driver.find_element(:id, 'isc_4Nicon')
    @@btnLiberarRoteiro = @driver.find_element(:css, 'div[id="isc_6T"]')
  end

  def map_ModalLiberarRoteiro
    @@btnAplicar = @driver.find_element(:xpath, '/html/body/div[6]/div[3]/div[1]/div')
    # @@btnAplicar = @driver.find_element(:css, 'div[id="isc_EO"]')
    #/html/body/div[6]/div[3]/div[1]/div
    # /html/body/div[6]/div[3]/div[1]/div
    # 'div[id="isc_EO"]'
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

  def sel_LiberarRoteiro
    @driver.action.click_and_hold(@@btnLiberarRoteiro).perform
    @@btnLiberarRoteiro.click
  end

  def sel_aplicar
    map_ModalLiberarRoteiro
    @driver.action.click_and_hold(@@btnAplicar).perform
    @@btnAplicar.click
  end




end