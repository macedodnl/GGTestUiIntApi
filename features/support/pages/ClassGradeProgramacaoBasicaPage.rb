require 'selenium-webdriver'

class GradeProgramacaoBasicaPage < BaseTest
  include Selenium::WebDriver::Support

  #mapeamento de elementos de pagina
  def map
    sleep 1
    @@divFiltro = @driver.find_element(:id, 'filtro')
    @@divGrade = @driver.find_element(:id, 'divGrade')
    @@Calendario = @@divFiltro.find_element(:id, 'calendar')
    @@grupoData = @@Calendario.find_element(:id, 'grupo-data')
    @@divAbrangencia = @@divFiltro.find_element(:id, 'abrangencia')
    @@Canal = @@divAbrangencia.find_element(:id, 'canalSelecionado')
    @@txt_Abrangencia = @@divAbrangencia.find_element(:id, 'campoAbrangencia')
    @@check_Abrangencia = @@divAbrangencia.find_element(:id, 'dim-exib')
    @@check_box_Abrangencia = @@check_Abrangencia.find_element(:css, "input[type='checkbox']")
    @@btn_pesquisar = @@divFiltro.find_element(:class, 'fundobotoes')
  end

  def map_grade
    map
    sleep 1

  end

  #Frame foco
  def sel_Iframe
    outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
    @@iframe = outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame @@iframe
  end

  #Ações
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

  def insere_Abrangencia(abrangencia)
    map
    @@txt_Abrangencia.clear
    @@txt_Abrangencia.send_keys abrangencia
    @@txt_Abrangencia.send_keys :return
  end

  def sel_Ok
    @driver.execute_script ("javascript:buscarArvore();")
  end

  def sel_CheckBox
    map
    @driver.action.move_to(@@check_box_Abrangencia).perform
    @@check_box_Abrangencia.send_keys :space
  end

  def sel_Pesquisar
    map
    begin  # "try" block
    @driver.action.move_to(@@btn_pesquisar).perform
    sel_Ok
    @driver.execute_script ("javascript:pesquisar();") #&& @driver.switch_to.alert.accept
    rescue # optionally: `rescue Exception => ex`
      @driver.action.move_to(@@btn_pesquisar).perform
      sel_Ok
      @driver.execute_script ("javascript:pesquisar();") #&& @driver.switch_to.alert.accept
    ensure # will always get executed
    @driver.action.move_to(@@btn_pesquisar).perform
    sel_Ok
    @driver.execute_script ("javascript:pesquisar();") #&& @driver.switch_to.alert.accept
    end
    # @driver.action.move_to(@@btn_pesquisar).perform
    # sel_Ok
    # @driver.execute_script ("javascript:pesquisar();") #&& @driver.switch_to.alert.accept
  end


end
