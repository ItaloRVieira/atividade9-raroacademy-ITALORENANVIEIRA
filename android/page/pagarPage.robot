*** Settings ***
Resource    ../../base.robot

*** Variables ***
${SAIR}                          xpath=//android.widget.Button
${PAGAR_PIX}                     xpath=//android.view.View[@content-desc="Pagar com Pix\nLeia um QR Code ou cole o código."]
${PAGAR_FATURA_CREDITO}          xpath=//android.view.View[@content-desc="Pagar fatura do cartão\nLibera o limite do seu Cartão de Crédito."]
${PAGAR_BOLETO}                  xpath=//android.view.View[@content-desc="Pagar um boleto\nContas de luz, água, etc."]

*** Keywords ***
Dado que o usuario selecione o botão de Pagar
    Espera o elemento e faz o clique     ${OPEN_PAGAR}  

Então deve ser exibido as opcoes de pagar com Pix, pagar fatura do cartão, pagar um boleto
    Verifica se o elemento está habilitado     ${PAGAR_PIX}
    Verifica se o elemento está habilitado     ${PAGAR_FATURA_CREDITO}
    Verifica se o elemento está habilitado     ${PAGAR_BOLETO}

E acessa as opções de pagamento 
    Elemento Deve Estar Visível     ${PAGAR_PIX}