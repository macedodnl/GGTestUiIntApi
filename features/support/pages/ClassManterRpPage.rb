require 'selenium-webdriver'

class ManterRpPage < BaseTest
  include Selenium::WebDriver::Support

  def map
    sleep 1
    #mapeamento de elementos de pagina
    @@divPrincipal = @driver.find_element(:id, 'ptApp:pnbPrincipalRP::content')
    @@tabConsulta = @@divPrincipal.find_element(:id, 'ptApp:pglCabecalho')
    @@inserirrp = @@tabConsulta.find_element(:id, 'ptApp:txtCodRP::content')
    @@divDadosRp = @@divPrincipal.find_element(:id, 'ptApp:ptdDadosRP')
    @@abaAbrangencia = @@divDadosRp.find_element(:id, 'ptApp:sdiAbrangenciaRP::disAcr')
    @@abaVeiculacao = @@divDadosRp.find_element(:id, 'ptApp:sdiInsercoesRP::ti')
    @@tabBotoes = @@divPrincipal.find_element(:id, 'ptApp:pgBotoes')
    @@btnsalvar = @@tabBotoes.find_element(:id, 'ptApp:cilSalvar')
    @@msg = @driver.find_element(:id, 'ptApp:svMensagens:pglMensagem')
  end

  def map_Caracterizacao
    map
    sleep 1
    #mapeamento de elementos da aba caracterizacao
    @@CaracteristicaCompra = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:selCaracteristica::content')
    @@ProdutoPortfolio = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:selPortfolio::content')
    @@ContatoAtendimento = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtContato::content')
    @@MesAno = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtVeiculacao::content')
    @@Cliente = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtCliente::content')
    @@Agencia = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtAgencia::content')
    @@Operacao = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtTipoOperacao::content')
    @@RefMapa = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtRefMapa::content')
    @@tabObs = @@divDadosRp.find_element(:id, 'ptApp:rgCrtrz:txtObs')
    @@textoObs = @@tabObs.find_element(:id, 'ptApp:rgCrtrz:txtObs::content')
    @@tabBotoes = @@divPrincipal.find_element(:id, 'ptApp:pgBotoes')
    @@btnsalvar = @@tabBotoes.find_element(:id, 'ptApp:cilSalvar')
    @@msg = @driver.find_element(:id, 'ptApp:svMensagens:pglMensagem')
  end

  def map_Abrangencia
    map
    sleep 1
    #mapeamento de elementos da aba abrangencia
    @@ExpandirEur = @@divDadosRp.find_element(:id, 'ptApp:rgAbr:tblMerc:2::di')
    @@Mnemonico = @@divDadosRp.find_element(:id, 'ptApp:rgAbr:sfAdicMerDig:itAdicMerDig::content')
    @@BtnAdicionar = @@divDadosRp.find_element(:id, 'ptApp:rgAbr:imgAdic')
  end

  def map_Abrangencia_Pos_Expandir
    map_Abrangencia
    sleep 1
    @@CheckGn6 = @@ExpandirEur.find_element(:id, 'ptApp:rgAbr:tblMerc:15:pglNode')
  end

  def map_Veiculacao
    map
    sleep 1
    #mapeamento de elementos da aba abrangencia
    @@tabSubdivdados = @@divDadosRp.find_element(:id, 'ptApp:ptdDadosRP::tabb')
    @@divInsercoes = @@tabSubdivdados.find_element(:id, 'ptApp:sdiInsercoesRP')
    @@ultimadivGeral = @@divInsercoes.find_element(:id, 'ptApp:rgVeic:psInsRP')
    @@divGeralEsquerda = @@ultimadivGeral.find_element(:id,'ptApp:rgVeic:psInsRP::f')
    @@tabBotoes = @@divGeralEsquerda.find_element(:id, 'ptApp:rgVeic:pgBot')
    @@tabGrid = @@divGeralEsquerda.find_element(:id, 'ptApp:rgVeic:pnItens')
    @@itemBody = @@tabGrid.find_element(:id, 'ptApp:rgVeic:incItem::body')
    @@subdivItem = @@itemBody.find_element(:id, 'ptApp:rgVeic:incItem')
    @@tabIncDisp = @@subdivItem.find_element(:id, 'ptApp:rgVeic:pInc')
    @@tdInclusao = @@tabIncDisp.find_element(:id, 'ptApp:rgVeic:pglIncl')
    @@tabAdAbrangencia = @@tdInclusao.find_element(:id, 'ptApp:rgVeic:pgInclusao')
    @@tabInclusaoUltima = @@tabAdAbrangencia.find_element(:id, 'ptApp:rgVeic:pgl14')
    @@textPrograma = @@tabInclusaoUltima.find_element(:id, 'ptApp:rgVeic:sfPrg:iptAdicPrograma::content')

    # @@textModalidade = @@tabInclusaoUltima.find_element(:id, 'ptApp:rgVeic:iptModalidade::content')
    # @@textMaterial = @@tabInclusaoUltima.find_element(:id, 'ptApp:rgVeic:selMat::content')
    # @@textDuracao = @@tabInclusaoUltima.find_element(:id, 'ptApp:rgVeic:selDur::content')
    # @@btnIncluir = @@tabInclusaoUltima.find_element(:id, 'ptApp:rgVeic:btIcItem')
  end

  #Frame foco
  def sel_Iframe
    @@outerdiv = @driver.find_element(:xpath, '//*[@id="outerDiv"]')
    iframe = @@outerdiv.find_element(:id, 'ifrmPrincipal')
    @driver.switch_to.frame iframe
  end

  #Ações

  def sel_TabAbrangencia
    map
    @@abaAbrangencia.click
    sleep 4
  end

  def sel_TabVeiculacao
    map
    @@abaVeiculacao.click
    sleep 4
  end

  def busca_Rp
    map
    @driver.action.move_to(@@inserirrp).perform
    @@inserirrp.click
    @@inserirrp.send_keys "626633", :return
    sleep 10
  end

  def edita_Rp
    map_Caracterizacao
    @driver.action.move_to(@@textoObs).perform
    @@textoObs.click
    @@textoObs.clear
    @@textoObs.send_keys "NOVA OBS ENVIADA PELO ROBO DE AUTOMACAO DE TESTES", :return
    @driver.action.move_to(@@btnsalvar).perform
    @@btnsalvar.click
    sleep 12
  end

  def valida_msg
    map
    @driver.action.move_to(@@msg).perform
  end

  #Caracterização
  def sel_CaracteristicaCompra(op)
    map_Caracterizacao
    @@opCaracteristicaCompra = Selenium::WebDriver::Support::Select.new(@@CaracteristicaCompra)
    @@opCaracteristicaCompra.select_by(:value, op)
    sleep 1
  end

  def sel_ProdutoPortfolio(op)
    map_Caracterizacao
    @@opProdutoPortfolio = Selenium::WebDriver::Support::Select.new(@@ProdutoPortfolio)
    @@opProdutoPortfolio.select_by(:value, op)
    sleep 1
  end

  def sel_ContatoAtendimento(op)
    map_Caracterizacao
    @@ContatoAtendimento.send_keys op, :tab
    sleep 2
  end

  def insere_MesAno(mesano)
    map_Caracterizacao
    @@MesAno.send_keys mesano, :tab
  end

  def insere_Cliente(cliente)
    map_Caracterizacao
    @@Cliente.send_keys cliente, :tab
    sleep 5
    @@MesAno.click
  end

  def insere_Agencia(agencia)
    map_Caracterizacao
    @@Agencia.click
    @@Agencia.send_keys agencia, :tab
    sleep 5
    :return
  end

  def insere_Operacao(operacao)
    map_Caracterizacao
    @@Operacao.send_keys operacao, :tab
    sleep 5
  end

  def insere_RefMapa(refmapa)
    map_Caracterizacao
    @@RefMapa.send_keys refmapa, :tab
    # :return
  end

  #abrangencia
  def ad_Abrangencia(canal)
    map_Abrangencia
    @@Mnemonico.send_keys canal, :return
    sleep 0.3
  end

  #veiculacao
  def ad_Programa(mnemonico)
    map_Veiculacao
    # @@textPrograma.click
    @@textPrograma.send_keys mnemonico, :return
    sleep 0.3
  end

  def sel_Modalidade(modalidade)
    map_Veiculacao
    @@textModalidade.send_keys modalidade, :return
    sleep 0.3
  end

  def sel_Material(op)
    @@opMaterial = Selenium::WebDriver::Support::Select.new(@@textMaterial)
    @@opMaterial.select_by(:value, op)
  end

  def sel_Duracao(duracao)
    @@textDuracao.send_keys duracao, :return
  end

  def sel_Incluir
    @@btnIncluir.click
    sleep 3
  end



end

