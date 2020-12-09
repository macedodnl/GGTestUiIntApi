require 'selenium-webdriver'

class HomeCePage < BaseTest

  def map
    @@userAutenticado = @driver.find_element(:class, 'name___2eduw')
  end

  def getuser(useresperado)
    map
    user = @@userAutenticado.text
    (user).eql? (useresperado)
  end

end