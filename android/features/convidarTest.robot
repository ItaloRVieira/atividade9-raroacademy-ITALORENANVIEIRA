*** Settings ***
Resource    ../utils/config.robot
Resource    ../page/convidarPage.robot


Test Setup       Abrir App
Test Teardown    Teardown


*** Test Cases ***

CT001 - Abrir página de indicar amigos
    Dado que o usuario selecione o botão de convidar 
    Então deve visualizar a tela de Regaste seus amigos
    E o botão de indicar amigos 

CT002 - Sair da area de indicar amigos selecionando botão de "x"
    Dado que o usuario selecione o botão de convidar 
    Quando selecionar o botão de "x" na página
    Então deve retornar para a home do aplicativo 

CT003 - Sair da area de indicar amigos deslizando a area 
    Dado que o usuario selecione o botão de convidar 
    Quando deslizar a tela para baixo
    Então deve retornar para a home do aplicativo 