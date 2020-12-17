#language:pt
#encoding: utf-8

@Processar_Roteiro @Ce
Funcionalidade: Processo do Roteiro


  Processar Roteiro

  Contexto:
    Dado que o usuário esteja logado na central de exibição
    Dado que o usuário possua permissão de acesso ao processo de roteiro
    Dado que o usuário efetue o filtro por data e veiculo válidos
    Dado que o usuário selecione a opção do roteiro

@Processar_Roteiro_Sucesso @teste_roteiro
  Cenário: Processar Roteiro Com Sucesso
  Quando seleciono a opção Gera Roteiro
  Quando executo os scripts de Patrocinio, Geral e Paralelas
  Quando retorno para o roteiro
  E seleciono a opção Liberar Roteiro
  Então o roteiro é processado com sucesso

@Bloquear_Roteiro
Cenário: Bloquear Roteiro
Quando seleciono a opção Gera Roteiro
Quando executo os scripts de Patrocinio, Geral e Paralelas
Quando retorno para o roteiro
E seleciono a opção Bloquear Roteiro
Então o roteiro é Bloquear com sucesso

