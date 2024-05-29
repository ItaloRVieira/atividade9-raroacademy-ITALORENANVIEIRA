*** Settings ***
Resource    ../utils/config.robot
Resource    ../page/transferirPage.robot


Test Setup       Abrir App
Test Teardown    Teardown


*** Test Cases ***
CT001 - Abrir area de transferencia
    Dado que o usuario selecione o botão de transferir
    Então deve ser exibido as informacoes da area de transferencia 
    E deve ser exibido o botão de ler QR Code, o saldo disponivel e o input para informar um novo valor 

CT002 - Informar valor ao input de transferencia
    Dado que o usuario selecione o botão de transferir
    Quando selecionar o input para informar o valor da transferencia
    
CT003 - Sair da area de transferencia selecionando botão de "x"
    Dado que o usuario selecione o botão de transferir
    Quando selecionar o botão de "x" na página
    Então deve retornar para a home do aplicativo 

CT004 - Sair da area de transferencia deslizando a area 
    Dado que o usuario selecione o botão de transferir
    Quando deslizar a tela para baixo
    Então deve retornar para a home do aplicativo 