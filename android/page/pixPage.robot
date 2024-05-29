*** Settings ***
Resource    ../../base.robot

*** Variables ***

${PAGAR}                        xpath=//android.widget.ImageView/android.widget.Button[2]
${TRANSFERIR}                   xpath=//android.widget.ImageView/android.widget.Button[3]
${COBRAR}                       xpath=//android.widget.ImageView/android.widget.Button[4]
${MINHAS_CHAVES}                xpath=//android.view.View[@content-desc="Minhas chaves"]
${MEU_LIMITE_PIX}               xpath=//android.view.View[@content-desc="Meu limite Pix"]
${ME_AJUDA}                     xpath=//android.view.View[@content-desc="Me ajuda"]
${SAIR}                         xpath=//android.widget.ImageView/android.widget.Button[1]


*** Keywords ***
Dado que o usuario selecione o botão de Pix
    Espera o elemento e faz o clique     ${OPEN_PIX} 
Então deve ser exibido as informacoes da area de Pix
    Espera o elemento e verifica se esta visivel    //android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]
E as opcoes de pagar, transferir, cobrar, minhas chaves, meu limite pix, me ajuda devem ser exibidas
    Verifica se o elemento está habilitado     ${PAGAR}
    Verifica se o elemento está habilitado     ${TRANSFERIR}
    Verifica se o elemento está habilitado     ${COBRAR}
    Verifica se o elemento está habilitado     ${MINHAS_CHAVES}
    Verifica se o elemento está habilitado     ${MEU_LIMITE_PIX}
    Verifica se o elemento está habilitado     ${ME_AJUDA}

E acessa a area de Pix 
    Espera o elemento e verifica se esta visivel    //android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]

Então deve retornar para a home do aplicativo
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Olá, Breno Freitas"]

Quando deslizar a tela para baixo
    Swipe By Percent    50    30    90    90    1000
    
      


    