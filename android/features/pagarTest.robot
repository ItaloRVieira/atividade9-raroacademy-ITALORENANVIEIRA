*** Settings ***
Resource    ../utils/config.robot
Resource    ../page/pagarPage.robot


Test Setup       Abrir App
Test Teardown    Teardown


*** Test Cases ***

CT001 - Acessar area de pagamentos
    Dado que o usuario selecione o botão de Pagar
    Então deve ser exibido as opcoes de pagar com Pix, pagar fatura do cartão, pagar um boleto
CT002 - Sair da area de pagamentos selecionando botão de "x"
    Dado que o usuario selecione o botão de Pagar
    Quando selecionar o botão de "x" na página
    Então deve retornar para a home do aplicativo 

CT003 - Sair da area de pagamentos deslizando a area 
    Dado que o usuario selecione o botão de Pagar
    E acessa as opções de pagamento 
    Quando deslizar a tela para baixo
    Então deve retornar para a home do aplicativo 