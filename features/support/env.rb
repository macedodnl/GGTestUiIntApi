require 'selenium-webdriver'
require "httparty"
require "rspec"
require "base64"
require "open-uri"
require "openssl"
require "net/smtp"
require "rake"
require 'cucumber'
require_relative '../support/pages/ClassBaseTest.rb'

BASE_URL = "https://siscomh.redeglobo.com.br/"
AUTH_URL = "https://siscomh.redeglobo.com.br/welcome/FrontComponent.jsp?pagina=wall.jsp&origem=globo&timeMilis=1605189834670"



Before do

  # options = Selenium::WebDriver::IE::Options.new
  # options.file_upload_dialog_timeout = 2000
  # options.ignore_zoom_level = true
  # options.ignore_protected_mode_settings = true
  # @driver = Selenium::WebDriver.for(:ie, options: options)

  #args: ['-headless'] -> execução em modo texto
  #args: [] -> execução em modo gráfico
  opts = Selenium::WebDriver::Chrome::Options.new(args: ['-headless'])
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(accept_insecure_certs: true)
  caps["pageLoadStrategy"] = "eager"
  @driver = Selenium::WebDriver.for(:chrome, :desired_capabilities => caps, options: opts)

  @driver.manage.timeouts.implicit_wait = 15
  @driver.manage.timeouts.page_load= 15
  @driver.manage.window.resize_to(1366, 768)


  # Instancias de paginas #
  @login_page = LoginPage.new(@driver)
  @home_page = HomePage.new(@driver)
  @MenuSiscom_page = MenuSiscomPage.new(@driver)
  # Fim instancias de paginas #

end

After do |scenario|
  if scenario.failed?
  embed(@home_page.print, "image/png", "Screenshot")
  @driver.quit
  else
    @driver.quit
  end
end
