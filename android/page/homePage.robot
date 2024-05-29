*** Settings ***
Resource    ../../base.robot

*** Variables ***

${HOME}                         xpath=//android.widget.ScrollView
${ICON_USER}                    xpath=//android.widget.ScrollView/android.view.View[1]
${BUTTON_CONTA}                 xpath=//android.view.View[@content-desc="Conta\nR$ 181,79"]
${BUTTON_VIEW_SALDO}            xpath=//android.widget.ScrollView/android.widget.Button[1]
${BUTTON_DUVIDA}                xpath=//android.widget.ScrollView/android.widget.Button[2]
${BUTTON_CONVITE}               xpath=//android.widget.ScrollView/android.widget.Button[3]
${OPEN_PIX}                     xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${OPEN_PAGAR}                   xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${OPEN_TRANSFERIR}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${OPEN_DEPOSITAR}               xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${OPEN_EMPRESTIMO}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${OPEN_CELULAR}                 xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${OPEN_COBRAR}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${OPEN_DOACAO}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${OPEN_DOACAO}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${ELEMENTOS_CONTA}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[2]


*** Keywords ***

Dado que o usuario está na home
    Verifica se o elemento está habilitado    ${HOME} 

Então deve visualizar a toolbar contendo os icone de usuario, liberar e esconder saldo, duvidas, indicar amigos
    Verifica se o elemento está habilitado    ${ICON_USER}
    Verifica se o elemento está habilitado    ${BUTTON_VIEW_SALDO}
    Verifica se o elemento está habilitado    ${BUTTON_DUVIDA} 
    Verifica se o elemento está habilitado    ${BUTTON_CONVITE}   

E abaixo o nome do usuario    
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Olá, Breno Freitas"]

Então deve visualizar a area referente ao saldo da conta 
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Conta\nR$ 181,79"]

E seleciono o icone de liberar e esconder saldo
    Espera o elemento e faz o clique    ${BUTTON_VIEW_SALDO}

Então o saldo não deve ser exibido para o usuario
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Conta"]


Então deve visualizar os icones de Pix, Pagar, transferir, Depositar, Emprestimos, Recarga de Celular, Cobrar, Doação, Encontrar atalhos
    Verifica se o elemento está habilitado    ${OPEN_PIX}  
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Pix"]
    Verifica se o elemento está habilitado    ${OPEN_PAGAR}  
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Pagar"]
    Verifica se o elemento está habilitado    ${OPEN_TRANSFERIR}
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Transferir"]
    Verifica se o elemento está habilitado    ${OPEN_DEPOSITAR} 
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Depositar"]


    Swipe By Percent   90    50    10    50    200

    Elemento Deve Estar Visível    ${OPEN_EMPRESTIMO}
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Empréstimos"]
    Elemento Deve Estar Visível    ${OPEN_CELULAR}
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Recarga de celular"]
    Elemento Deve Estar Visível    ${OPEN_COBRAR}
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Cobrar"]
    Elemento Deve Estar Visível    ${OPEN_DOACAO}
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Doação"]
    Elemento Deve Estar Visível    ${ELEMENTOS_CONTA} 
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Encontrar atalhos"]

Então deve visualizar o banner de Meus cartões 
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Meus cartões"]

E navegar entre os banners abaixo
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
    Swipe By Percent   80    80    0    50    200
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]

Então deve visualizar a area de Cartão de Crédito com o valor da fatura atual e limite disponivel 
    Swipe By Percent   90    90    40    40    1000
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Cartão de Crédito\nFatura atual\nR$ 780,72\nLimite disponível R$ 806,78"]

Então deve visualizar a area de Empréstimo com o valor disponivel para emprestimo
    Swipe By Percent   90    90    40    40    1000
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Empréstimo\nValor disponível de até\nR$ 10.000,00"]

Então deve visualizar a area de Investimentos
    Swipe By Percent   90    90    40    40    1000
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Investimentos\nA revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital."]

E visualizar o botão de conhecer 
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Conhecer"]

Então deve visualizar a area Seguro de Vida
    Swipe By Percent   10    90    80    10    1000
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Seguro de vida\nConheça Nubank Vida: um seguro simples e que cabe no bolso."]

Então deve visualizar os banners de WhatsApp e Indique seus amigos 
    Swipe By Percent   10    90    80    10    1000
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="WhatsApp\nNovo\nPagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa."]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Quero conhecer"]
    Swipe By Percent   80    80    0    100    200
    Espera o elemento e verifica se esta visivel     //android.view.View[@content-desc="Seguro de vida\nConheça Nubank Vida: um seguro simples e que cabe no bolso."]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Indicar amigos"]









       





    