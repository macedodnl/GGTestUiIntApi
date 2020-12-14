require 'selenium-webdriver'

class GradeProgramacaoBasicaPage < BaseTest
  include Selenium::WebDriver::Support

  def map
    sleep 1
    #mapeamento de elementos de pagina
    @@divFiltro = @driver.find_element(:id, 'filtro')
    @@divGrade = @driver.find_element(:id, 'divGrade')
    @@Calendario = @@divFiltro.find_element(:id, 'calendar')
    @@grupoData = @@Calendario.find_element(:id, 'grupo-data')
    @@divAbrangencia = @@divFiltro.find_element(:id, 'abrangencia')
    @@Canal = @@divAbrangencia.find_element(:id, 'canalSelecionado')
  end

  #Frame foco
  def sel_Iframe
    outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
    @@iframe = outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame @@iframe
  end

  def sel_btnNovo
    @driver.execute_script ("javascript:menuCommand('novo');")
    sleep 5
  end

  def incluir_Programa
    @driver.execute_script ("javascript:incluirPrograma();")
  end

  def sel_Dia(data)#'18/12/2020'
    @driver.execute_script ("javascript:atualizaCampoData('dtReferencia', '#{data}', 'calendar' );")
  end

  def sel_Canal(op)#'61'
    map
    @@opCanal = Selenium::WebDriver::Support::Select.new(@@Canal)
    @@opCanal.select_by(:value, op)
    sleep 1
  end

end
