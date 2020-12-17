require 'selenium-webdriver'

class HomeCePage < BaseTest

  def map
    sleep 3
    @@userAutenticado = @driver.find_element(:class, 'name___2eduw')
    @@processoRoteiro = @driver.find_element(:css, 'a[href="/grid"]')
  end

  def getuser(useresperado)
    map
    user = @@userAutenticado.text
    (user).eql? (useresperado)
  end

  def sel_ProcessoRoteiro
    map
    @@processoRoteiro.click
    sleep 9
  end



end