Dado("que o usuário esteja logado na central de exibição") do
  @loginCe_page.visitar
  @loginCe_page.loginPadrao
  embed(@loginCe_page.print, "image/png", "Screenshot")
end

Dado("que o usuário possua permissão de acesso ao processo de roteiro") do
  @homeCe_page.sel_ProcessoRoteiro
  embed(@homeCe_page.print, "image/png", "Screenshot")
end

Dado("que o usuário efetue o filtro por data e veiculo válidos") do
  @processoRoteiroCe_page.sel_Filtrar
  sleep 1
  embed(@processoRoteiroCe_page.print, "image/png", "Screenshot")
  @processoRoteiroCe_page.set_Data("2020-12-24")
  sleep 1
  embed(@processoRoteiroCe_page.print, "image/png", "Screenshot")
  @processoRoteiroCe_page.sel_Veiculo
  sleep 1
  embed(@processoRoteiroCe_page.print, "image/png", "Screenshot")
  @processoRoteiroCe_page.sel_TipoRoteiro
  embed(@processoRoteiroCe_page.print, "image/png", "Screenshot")
  # @processoRoteiroCe_page.sel_Roteiro
  # embed(@processoRoteiroCe_page.print, "image/png", "Screenshot")
  @processoRoteiroCe_page.aplicarFiltro
  sleep 3
  embed(@processoRoteiroCe_page.print, "image/png", "Screenshot")
end

Dado("que o usuário selecione a opção do roteiro") do
  @processoRoteiroCe_page.sel_PrimeiroRoteiro
  sleep 1
  embed(@processoRoteiroCe_page.print, "image/png", "Screenshot")
end

Quando("seleciono a opção Gera Roteiro") do
  @roteiroPage_page.sel_Iframe
  @roteiroPage_page.gera_Roteiro
  sleep 2
  embed(@roteiroPage_page.print, "image/png", "Screenshot")
end

Quando("executo os scripts de Patrocinio, Geral e Paralelas") do
  @encaixeInsercoes_page.exec
  sleep 3
  embed(@encaixeInsercoes_page.print, "image/png", "Screenshot")
  @encaixeInsercoes_page.sel_Geral
  sleep 2
  embed(@encaixeInsercoes_page.print, "image/png", "Screenshot")
  @encaixeInsercoes_page.exec
  sleep 4
  embed(@encaixeInsercoes_page.print, "image/png", "Screenshot")
  @encaixeInsercoes_page.sel_Paralelas
  sleep 2
  embed(@encaixeInsercoes_page.print, "image/png", "Screenshot")
  @encaixeInsercoes_page.exec
  sleep 4
  embed(@encaixeInsercoes_page.print, "image/png", "Screenshot")
end

Quando("retorno para o roteiro") do
  @encaixeInsercoes_page.sel_VoltaRoteiro
  sleep 2
  embed(@encaixeInsercoes_page.print, "image/png", "Screenshot")
end

Quando("seleciono a opção Liberar Roteiro") do
  @roteiroPage_page.sel_LiberarRoteiro
  sleep 2
  embed(@roteiroPage_page.print, "image/png", "Screenshot")
  @roteiroPage_page.sel_aplicar
  sleep 9
  embed(@roteiroPage_page.print, "image/png", "Screenshot")
end

Então("o roteiro é processado com sucesso") do
  embed(@roteiroPage_page.print, "image/png", "Screenshot")
end