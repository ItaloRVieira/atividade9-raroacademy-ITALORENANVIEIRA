*** Settings ***

Resource    ../../base.robot

*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
#<<Aqui você precisa alterar para a sua versão do Android, vai ser necessario alterar no appium inspect também>>
${ANDROID_PLATFORM_VERSION}     12
${APP_PACKAGE}                  com.ricardodalarme.nubank_clone
${APP_ACTIVITY}                 .MainActivity t137
${ANDROID_PLATFORM_NAME}        Android

*** Keywords ***

Abrir App
    Open Application    http://127.0.0.1:4723   automationName=${ANDROID_AUTOMATION_NAME}    platformName=${ANDROID_PLATFORM_NAME}     
    ...    platformVersion=${ANDROID_PLATFORM_VERSION}     appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}
    

Teardown
    [Arguments]
    Run Keyword If Test Failed    Capture Page Screenshot
    Close All Applications