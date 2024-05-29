*** Settings ***
Resource    ../../base.robot

*** Variables ***
${BUTTON_INDICAR_AMIGOS}        xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${LER_QR}                       xpath=//android.view.View/android.widget.Button[2]
${INPUT_TRANSFERENCIA}          xpath=//android.widget.EditText[@text="R$ 0,00"]


*** Keywords ***
Dado que o usuario selecione o botão de transferir 
    Espera o elemento e faz o clique     ${OPEN_TRANSFERIR}

Então deve ser exibido as informacoes da area de transferencia
    Espera o elemento e verifica se esta visivel    //android.widget.EditText[contains(@hint, "Qual é o valor da transferência?\nSaldo disponível em conta R$ 181,79")]
E deve ser exibido o botão de ler QR Code, o saldo disponivel e o input para informar um novo valor
    Elemento Deve Estar Visível     ${LER_QR}  

Quando selecionar o input para informar o valor da transferencia
    Espera o elemento e informa valor no Input    ${INPUT_TRANSFERENCIA}    5598
    Espera o elemento e verifica se esta visivel    //android.widget.EditText[@text="R$ 55,98"]