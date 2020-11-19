#language:pt
#encoding: utf-8

@Front @Reserva
Funcionalidade: Cópia de Reserva SisCom

  Cópia de reserva com envio para central de exibição
  @Copia_Reserva_envia
  Cenário: Enviar rp copiado para Central de exibição com inclusao de linha
    Dado que eu acesse a página de pesquisa de rp
    Quando efetuo uma busca por um rp válido
    E após a cópia e configuração com dados válidos
    E a inclusao da linha as alterações são salvas
    Então o rp deverá ser salvo e enviado para a central de exibição

  @Copia_Reserva_com_estouro
  Cenário: Copiar rp com inclusao de linha com estouro
    Dado que eu acesse a página de pesquisa de rp
    Quando efetuo uma busca por um rp válido
    E após a cópia e configuração com dados válidos
    E a inclusao da linha as alterações são salvas
    Então o rp deverá ser salvo mas não deverá ser enviado para a central de exibição

  @Copia_Reserva_envia_exluindo_linha
  Cenário: Enviar rp copiado para Central de exibição com exclusao de linha
    Dado que eu acesse a página de pesquisa de rp
    Quando efetuo uma busca por um rp válido
    E após a cópia e configuração com dados válidos
    E a exclusao da linha as alterações são salvas
    Então o rp deverá ser salvo e enviado para a central de exibição