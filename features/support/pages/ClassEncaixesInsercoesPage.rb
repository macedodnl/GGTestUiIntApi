require 'selenium-webdriver'

class EncaixeInsercoesPage < BaseTest

  def map
    @@linkExec = @driver.find_element(:css, 'div[aria-label="Execultar"]')
    @@linkGeral = @driver.find_element(:xpath, '/html/body/div[2]/div[1]/div/div/div/div[6]/div[2]/div/div[3]/div[3]/div/div[2]/div/table/tbody/tr[2]')
    @@linkParalelas = @driver.find_element(:xpath, '/html/body/div[2]/div[1]/div/div/div/div[6]/div[2]/div/div[3]/div[3]/div/div[2]/div/table/tbody/tr[3]')
    @@btnVoltarRoteiro = @driver.find_element(:xpath, '/html/body/div[2]/div[1]/div/div/div/div[6]/div[1]/div[2]/div/div/div/table/tbody/tr/td/table/tbody/tr/td[1]/span')
    # (:css, 'span[id="isc_7Picon"]') (:id, 'isc_7P')
  end

  def exec
    map
    @@linkExec.click
  end

  def sel_Geral
    @driver.action.click_and_hold(@@linkGeral).perform
  end

  def sel_Paralelas
    @driver.action.click_and_hold(@@linkParalelas).perform
  end

  def sel_VoltaRoteiro
    @driver.action.click_and_hold(@@btnVoltarRoteiro).perform
    @@btnVoltarRoteiro.click
  end

  # def sel_Iframe
  #   base = @driver.find_element(:id, 'root')
  #   iframe = base.find_element(:id, 'app-v1')
  #   @driver.switch_to.frame iframe
  # end


end