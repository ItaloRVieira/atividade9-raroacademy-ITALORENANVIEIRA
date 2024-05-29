*** Settings ***
Resource    ../../base.robot

*** Variables ***

${SAIR}                         xpath=//android.widget.ImageView/android.widget.Button[1]
${SAIR_HOME}                    xpath=//android.widget.Button

*** Keywords ***
Quando selecionar o botão de "x" na página
    ${elemento} =    Run Keyword And Return Status    Element Should Be Visible    ${SAIR}
    Run Keyword If    '${elemento}'=='True'    Click Element    ${SAIR}
    ...    ELSE IF    '${elemento}'=='False' or '${elemento}'=='${EMPTY}'
    ...    Click Element   ${SAIR_HOME}
    ...    ELSE    Log    Elemento não encontrado
