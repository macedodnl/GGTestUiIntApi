material = ''

Dado("que eu esteja logado no Siscom acesse o Controle de Materiais, para incluir um novo material") do
  @loginSisCom_page.visitar
  @loginSisCom_page.loginPadrao
  @homeSisCom_page.visitar_home
  sleep 3
  @MenuSisCom_page.sel_MaterialTradicional
  embed(@MenuSisCom_page.print, "image/png", "Screenshot")
end

Quando("seleciono a opção Novo e informo Ponto de Venda{string},  Cliente {string}, Agência de Veiculação {string}, Endereço {string}, Título {string}, Duração {string}, Formato {string}, Produto {string}, Subcategoria {string}, Marca {string}, Gr. Choque {string}, Data Recebimento {string}") do |pontoVenda, cliente, agencia_veiculacao, endereco, titulo, duracao, string7, string8, subcategoria, marca, string11, dtrecebimento|
  @CadastroMaterialSisCom_page.sel_Iframe
  @CadastroMaterialSisCom_page.sel_btnNovo
  @CadastroMaterialSisCom_page.insere_PontoVenda(pontoVenda)
  @CadastroMaterialSisCom_page.insere_Cliente(cliente)
  @CadastroMaterialSisCom_page.insere_AgenciaVeiculacao(agencia_veiculacao)
  @CadastroMaterialSisCom_page.insere_Endereco(endereco)
  @CadastroMaterialSisCom_page.unCheck_Crt
  @CadastroMaterialSisCom_page.insere_Titulo(titulo)
  @CadastroMaterialSisCom_page.insere_Duracao(duracao)
  @CadastroMaterialSisCom_page.check_HD
  @CadastroMaterialSisCom_page.insere_Subcategoria(subcategoria)
  @CadastroMaterialSisCom_page.insere_Marca(marca)
  @CadastroMaterialSisCom_page.insere_DtRecebimento(dtrecebimento)
  embed(@CadastroMaterialSisCom_page.print, "image/png", "Screenshot")
end

Quando("aciono Incluir Dados") do
  @CadastroMaterialSisCom_page.sel_btnIncluirDados
  embed(@CadastroMaterialSisCom_page.print, "image/png", "Screenshot")
end

Então("dados são salvos com sucesso, é gerado Código do Material") do
  material = @CadastroMaterialSisCom_page.get_Material
  embed(@CadastroMaterialSisCom_page.print, "image/png", "Screenshot")
end

Então("o Material é enviado para Central de exbição") do
  @result = BaseTest.carregarUltimaAlteracaoMaterial(material)
  responsebody = @result.response.body
  expect(responsebody).to include(material)
  @CadastroMaterialSisCom_page.sel_btnExcluir
end