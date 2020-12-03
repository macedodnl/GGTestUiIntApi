material = ''
Dado("que eu esteja logado no Siscom acesse o Controle de Materiais, para incluir um novo material") do
  @login_page.visitar
  @login_page.loginPadrao
  @home_page.visitar_home
  sleep 3
  @MenuSiscom_page.sel_MaterialTradicional
  embed(@MenuSiscom_page.print, "image/png", "Screenshot")
end

Quando("seleciono a opção Novo e informo Ponto de Venda{string},  Cliente {string}, Agência de Veiculação {string}, Endereço {string}, Título {string}, Duração {string}, Formato {string}, Produto {string}, Subcategoria {string}, Marca {string}, Gr. Choque {string}, Data Recebimento {string}") do |pontoVenda, cliente, agencia_veiculacao, endereco, titulo, duracao, string7, string8, subcategoria, marca, string11, dtrecebimento|
  @CadastroMaterial_page.sel_Iframe
  @CadastroMaterial_page.sel_btnNovo
  @CadastroMaterial_page.insere_PontoVenda(pontoVenda)
  @CadastroMaterial_page.insere_Cliente(cliente)
  @CadastroMaterial_page.insere_AgenciaVeiculacao(agencia_veiculacao)
  @CadastroMaterial_page.insere_Endereco(endereco)
  @CadastroMaterial_page.unCheck_Crt
  @CadastroMaterial_page.insere_Titulo(titulo)
  @CadastroMaterial_page.insere_Duracao(duracao)
  @CadastroMaterial_page.check_HD
  @CadastroMaterial_page.insere_Subcategoria(subcategoria)
  @CadastroMaterial_page.insere_Marca(marca)
  @CadastroMaterial_page.insere_DtRecebimento(dtrecebimento)
  embed(@CadastroMaterial_page.print, "image/png", "Screenshot")
end

Quando("aciono Incluir Dados") do
  @CadastroMaterial_page.sel_btnIncluirDados
  embed(@CadastroMaterial_page.print, "image/png", "Screenshot")
end

Então("dados são salvos com sucesso, é gerado Código do Material") do
  material = @CadastroMaterial_page.get_Material
  embed(@CadastroMaterial_page.print, "image/png", "Screenshot")
end

Então("o Material é enviado para Central de exbição") do
  @result = BaseTest.carregarUltimaAlteracaoMaterial(material)
  responsebody = @result.response.body
  expect(responsebody).to include(material)
  @CadastroMaterial_page.sel_btnExcluir
  # if endereco == "SP1 1"
  #   expect(responsebody).to include("SP1")
  # elsif endereco == "RJ 1"
  #   expect(responsebody).to include("RJ")
  # elsif endereco == "DF 1"
  #   expect(responsebody).to include("DF")
  # else
  #   expect(responsebody).to include(endereco)
  # end
  # expect(responsebody).to include(titulo)
end