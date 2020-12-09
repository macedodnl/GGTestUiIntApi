require "selenium-webdriver"

class LoginCePage < BaseTest
  include RSpec::Matchers

  def map
    sleep 1
    #mapeamento de elementos de pagina
    @@txtUser = @driver.find_element(:id, 'userName')
    @@txtPass = @driver.find_element(:id, 'password')
    @@txtToken = @driver.find_element(:id, 'two_factor')
  end

  def alertaPassUser(msgesperadapassuser)
    @@alertPassUser = @driver.find_element(:class, "ant-alert-message")
    alert = @@alertPassUser.text
    (msgesperadapassuser).eql? (alert)
  end

  def alertaToken
    @@alertToken = @driver.find_element(:class, "ant-alert ant-alert-error-token")
  end

  def alertNull(msgesperada)
    @@alertNull = @driver.find_element(:class, "ant-form-item-explain")
    alert = @@alertNull.text
    (msgesperada).eql? (alert)
  end

  def visitar
    @driver.navigate.to BASECE_URL
  end

  def setuser(user)
    map
    @@txtUser.send_keys user
  end

  def setpass(pass)
    map
    @@txtPass.send_keys pass
  end

  def settoken(token)
    map
    @@txtToken.send_keys token
  end

  def autenticar
    map
    @@txtPass.send_keys :return
  end

  def loginPadrao
    setuser("globo")
    setpass("12345")
    settoken("12345")
    autenticar
  end

end