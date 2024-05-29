*** Settings ***

Resource    ../../base.robot

*** Keywords ***

Espera o elemento e faz o clique
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Verifica se o elemento está habilitado
    [Arguments]    ${elemento}
    Element Should Be Enabled    ${elemento}

Espera o elemento e faz o inputtext
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Input Text                       ${elemento}    ${texto}

Espera o elemento e verifica se esta visivel
    [Arguments]    ${texto}
    Element Should Be Visible    ${texto}

Elemento Deve Estar Visível
    [Arguments]    ${elemento}
    Element Should Be Visible    ${elemento}

Espera o elemento e informa valor no Input
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Input Text                       ${elemento}    ${texto}
