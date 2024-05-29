*** Settings ***
Resource    ../../base.robot

*** Variables ***
${BUTTON_INDICAR_AMIGOS}        xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${COMO_FUNCIONA}                xpath=//android.view.View[@content-desc="Entenda como funciona >"]



*** Keywords ***
*** Settings ***
Resource    ../../base.robot
Resource    ../page/contaPage.robot

*** Variables ***
${BUTTON_INDICAR_AMIGOS}        xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]


*** Keywords ***
Dado que o usuario selecione a area de conta
    Espera o elemento e faz o clique    ${BUTTON_CONTA}

Então deve ser possivel visualizar o Saldo disponivel, Dinheiro guardado e rendimento total
    Espera o elemento e verifica se esta visivel     //android.view.View[@content-desc="Saldo disponível"]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="R$ 181,79"]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Dinheiro guardado\nR$ 240,02"]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Rendimento total da conta\n+R$ 0,20 este mês"]

E opções para Deposita, Pagar, Transferir, Emprestimo e Cobra
    Verifica se o elemento está habilitado    ${OPEN_DEPOSITAR} 
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Depositar"]
    Verifica se o elemento está habilitado    ${OPEN_PAGAR}  
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Pagar"]
    Verifica se o elemento está habilitado    ${OPEN_TRANSFERIR}
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Transferir"]
    Elemento Deve Estar Visível    ${OPEN_EMPRESTIMO}
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Empréstimos"]

    # Swipe By Percent   80    80    0    50    200

    # Elemento Deve Estar Visível    ${OPEN_COBRAR}
    # Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Cobrar"]

E o historico de transações da conta 
    Swipe By Percent   10    90    80    10    1000
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Histórico"]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Transferência enviada\nOntem\nPATRICIA COSTA \nR$ 30,00\nPix"]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Transferência recebida\nOntem\nERIKO BARBOSA\nR$ 30,00\nPix"]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Transferência recebida\nOntem\nIVAN COELHO \nR$ 30,00\nPix"]

Dado que o usuario está na area de conta
    Espera o elemento e faz o clique    ${BUTTON_CONTA}

Quando selecionar o botão de deposito
    Espera o elemento e faz o clique    ${OPEN_DEPOSITAR} 

Quando selecionar o botão de Pagar
    Espera o elemento e faz o clique    ${OPEN_PAGAR}  

Quando selecionar o botão de Emprestimo
    Espera o elemento e faz o clique    ${OPEN_EMPRESTIMO}

Então deve ser exibido o valor disponivel para emprestimo, o botão de entenda como funciona e a opção de novo emprestimo.
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Entenda como funciona >"]
    Espera o elemento e verifica se esta visivel    ${COMO_FUNCIONA}

E deve mostrar se a mensagem de nenhum emprestimo ativo 
    Espera o elemento e verifica se esta visivel    //android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]



    
