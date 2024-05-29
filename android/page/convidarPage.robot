*** Settings ***
Resource    ../../base.robot

*** Variables ***
${BUTTON_INDICAR_AMIGOS}        xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]


*** Keywords ***
Dado que o usuario selecione o botão de convidar 
    Espera o elemento e faz o clique     ${BUTTON_CONVITE}

Então deve visualizar a tela de Regaste seus amigos
    Espera o elemento e verifica se esta visivel    //android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"] 

E o botão de indicar amigos
     Elemento Deve Estar Visível     ${BUTTON_INDICAR_AMIGOS}