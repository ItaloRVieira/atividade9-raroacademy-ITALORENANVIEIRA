*** Settings ***
Resource    ../utils/config.robot
Resource    ../page/homePage.robot


Test Setup       Abrir App
Test Teardown    Teardown


*** Test Cases ***

CT001 - Verificar toolbar da Home
    Dado que o usuario está na home 
    Então deve visualizar a toolbar contendo os icone de usuario, liberar e esconder saldo, duvidas, indicar amigos
    E abaixo o nome do usuario  

CT002 - Verificar Saldo aberto da conta na Home
    Dado que o usuario está na home 
    Então deve visualizar a area referente ao saldo da conta

CT003 - Verificar Saldo fechado da conta na Home
    Dado que o usuario está na home 
    E seleciono o icone de liberar e esconder saldo
    Então o saldo não deve ser exibido para o usuario 

CT004 - Verificar navegação e icones na area de conta na Home
    Dado que o usuario está na home 
    Então deve visualizar os icones de Pix, Pagar, transferir, Depositar, Emprestimos, Recarga de Celular, Cobrar, Doação, Encontrar atalhos
    
CT005 - Verificar banners na area de conta na Home
    Dado que o usuario está na home 
    Então deve visualizar o banner de Meus cartões 
    E navegar entre os banners abaixo

CT006 - Verificar area de cartões na home
    Dado que o usuario está na home 
    Então deve visualizar a area de Cartão de Crédito com o valor da fatura atual e limite disponivel 

CT007 - Verificar area de emprestimo
    Dado que o usuario está na home 
    Então deve visualizar a area de Empréstimo com o valor disponivel para emprestimo

CT008 - Verificar area de Investimento 
    Dado que o usuario está na home 
    Então deve visualizar a area de Investimentos
    E visualizar o botão de conhecer 

CT009 - Verificar area de Seguro de Vida
    Dado que o usuario está na home 
    Então deve visualizar a area Seguro de Vida

CT010 - Verificar area de Descubra mais
    Dado que o usuario está na home 
    Então deve visualizar os banners de WhatsApp e Indique seus amigos 

   

