*** Settings ***
Resource    ../utils/config.robot
Resource    ../page/pixPage.robot


Test Setup       Abrir App
Test Teardown    Teardown


*** Test Cases ***

CT001 - Acessar area PIX
    Dado que o usuario selecione o botão de Pix
    Então deve ser exibido as informacoes da area de Pix
    E as opcoes de pagar, transferir, cobrar, minhas chaves, meu limite pix, me ajuda devem ser exibidas

CT002 - Sair da area Pix selecionando botão de "x"
    Dado que o usuario selecione o botão de Pix
    Quando selecionar o botão de "x" na página
    Então deve retornar para a home do aplicativo 

CT003 - Sair da area Pix deslizando a area 
    Dado que o usuario selecione o botão de Pix
    E acessa a area de Pix 
    Quando deslizar a tela para baixo
    Então deve retornar para a home do aplicativo 
        
