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
BASECE_URL = "https://ad-operation-app.backstage.dev.globoi.com/"



Before do |scenario|

  # options = Selenium::WebDriver::IE::Options.new
  # options.file_upload_dialog_timeout = 2000
  # options.ignore_zoom_level = true
  # options.ignore_protected_mode_settings = true
  # @driver = Selenium::WebDriver.for(:ie, options: options)

  if scenario.feature.name.include?("PBAS")    #execução em modo gráfico remoto
    caps = Selenium::WebDriver::Remote::Capabilities.ie
    # caps["pageLoadStrategy"] = "eager"
    @driver = Selenium::WebDriver.for :remote, :url => "http://localhost:4444/wd/hub/", :desired_capabilities => caps
    else #args: ['-headless'] -> execução em modo texto local
      opts = Selenium::WebDriver::Chrome::Options.new(args: ['-headless'])
      caps = Selenium::WebDriver::Remote::Capabilities.chrome(accept_insecure_certs: true)
      # caps["pageLoadStrategy"] = "eager"
      @driver = Selenium::WebDriver.for(:chrome, :desired_capabilities => caps, options: opts)
  end

  @driver.manage.timeouts.implicit_wait = 50
  @driver.manage.timeouts.page_load= 50
  @driver.manage.window.resize_to(1366, 768)

  # Instancias de paginas #
  @BaseTest = BaseTest.new(@driver)
  @loginSisCom_page = LoginSisComPage.new(@driver)
  @homeSisCom_page = HomeSisComPage.new(@driver)
  @MenuSisCom_page = MenuSisComPage.new(@driver)
  @CadastroMaterialSisCom_page = CadastroMaterialSisComPage.new(@driver)
  @ManterRpSisCom_page = ManterRpSisComPage.new(@driver)

  @loginCe_page = LoginCePage.new(@driver)
  @homeCe_page = HomeCePage.new(@driver)
  # Fim instancias de paginas #

end

After do |scenario|
  if scenario.failed?
  embed(@BaseTest.print, "image/png", "Screenshot")
  @driver.quit
  else
    @driver.quit
  end
end
