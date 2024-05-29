*** Settings ***
Resource    ../utils/config.robot
Resource    ../page/contaPage.robot


Test Setup       Abrir App
Test Teardown    Teardown


*** Test Cases ***

CT001 - Abrir página para visualizar informações do saldo da conta
    Dado que o usuario selecione a area de conta
    Então deve ser possivel visualizar o Saldo disponivel, Dinheiro guardado e rendimento total
    E opções para Deposita, Pagar, Transferir, Emprestimo e Cobra 
    E o historico de transações da conta 

CT002 - Selecionar opção de deposito dentro da area de conta
    Dado que o usuario está na area de conta
    Quando selecionar o botão de deposito
    Então deve ser exibido as opcoes de pagar com Pix, pagar fatura do cartão, pagar um boleto

CT003 - Selecionar opção de trasferir dentro da area de conta
    Dado que o usuario está na area de conta
    Quando selecionar o botão de Pagar
    Então deve ser exibido as informacoes da area de transferencia 
    E deve ser exibido o botão de ler QR Code, o saldo disponivel e o input para informar um novo valor

CT004 - Selecionar opção de emprestimo dentro da area de conta
    Dado que o usuario está na area de conta
    Quando selecionar o botão de Emprestimo
    Então deve ser exibido o valor disponivel para emprestimo, o botão de entenda como funciona e a opção de novo emprestimo.
    E deve mostrar se a mensagem de nenhum emprestimo ativo 
