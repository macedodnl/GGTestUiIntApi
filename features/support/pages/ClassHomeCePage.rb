require 'selenium-webdriver'

class HomeCePage < BaseTest

  def map
    @@userAutenticado = @driver.find_element(:class, 'name___2eduw')
  end

  def getuser
    map
    user = @@userAutenticado.text
    return user
  end

end