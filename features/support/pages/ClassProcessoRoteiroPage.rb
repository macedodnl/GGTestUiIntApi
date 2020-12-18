require 'selenium-webdriver'

class ProcessoRoteiroPage < BaseTest

  def map
    @@btnFiltrar = @driver.find_element(:class, 'ant-btn-icon-only')
    @@btnRoteiro = @driver.find_element(:xpath, '//*[@id="root"]/div/section/section/div/main/div/div/div/div[2]/div[2]/div/div/div/div/div/div/div/table/tbody/tr[1]/td[6]')
  end

  def map_Filtro
    @@txtData = @driver.find_element(:id, 'gri_Date')#2020-11-25
    @@selVeiculo = @driver.find_element(:id, 'gri_pla_IdPlace.pla_cha_IdChannel.cha_Id')#
    @@txtDescricao = @driver.find_element(:id, 'gri_Description')
    @@selTipoRoteiro = @driver.find_element(:id, 'gri_plt_IdPlaylistType.plt_Id')
    @@selGrade = @driver.find_element(:id, 'gri_Status')
    @@selRoteiro = @driver.find_element(:id, 'gri_StatusPlaylist')
    @@Fechar = @driver.find_element(:class, 'ant-drawer-close')
    @@btnAplicar = @driver.find_element(:css, 'button[type="submit"]')
  end

  def sel_Filtrar
    map
    @@btnFiltrar.click
  end

  def set_Data (data)
    map_Filtro
    @@txtData.send_keys data, :return
  end

  def sel_Veiculo
    map_Filtro
    @driver.action.move_to(@@selVeiculo).perform
    @@selVeiculo.click
    sleep 1
    @@selVeiculo.send_keys(:arrow_down)
    @@selVeiculo.send_keys(:return)
  end

  def set_Descricao (descricao)
    map_Filtro
    @@txtData.click
    @@txtData.clear
    @@txtData.send_keys descricao, :return
  end

  def FecharFiltro
    map_Filtro
    @@Fechar.click
  end

  def aplicarFiltro
    map_Filtro
    @@btnAplicar.click
  end

  def sel_TipoRoteiro
    map_Filtro
    @driver.action.move_to(@@selTipoRoteiro).perform
    @@selTipoRoteiro.click
    sleep 1
    # @@selTipoRoteiro.send_keys(:arrow_down)
    @@selTipoRoteiro.send_keys(:return)
  end

  def sel_Roteiro
    map_Filtro
    @driver.action.move_to(@@selRoteiro).perform
    @@selRoteiro.click
    sleep 1
    # @@selTipoRoteiro.send_keys(:arrow_down)
    @@selRoteiro.send_keys(:return)
  end


  def sel_PrimeiroRoteiro
    map
    @@btnRoteiro.click
    sleep 18
  end



end