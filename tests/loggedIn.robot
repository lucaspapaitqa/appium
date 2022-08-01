*** Settings ***
Documentation       Antes de iniciar, usuário deve estar logado na web. 
Resource            ../resources/base.robot
Test Setup          Open Session
Test Teardown       Close Session  

*** Variables ***

${TEXT_LOGGEDID}             id=com.ikatec.digisac:id/loggedIn-text-main
${BTN_LOGGEDID}              id=com.ikatec.digisac:id/loggedIn-button-takeover
${TEXT_BTN_LOGGEDID}         id=com.ikatec.digisac:id/primary_botton
${BTN_LOGOUT}                id=com.ikatec.digisac:id/loggedIn-button-logout
${TXT_BTN_LOGOUT}           id=com.ikatec.digisac:id/loggedIn-text-logout
${ICON_LOGOUT}               id=com.ikatec.digisac:id/loggedIn-svg-logout



*** Test Cases ***
Present The Elements

    Get Started Portuguese
    Wait Until Element Is Visible               ${TEXT_LOGGEDID}            
    Wait Until Element Is Visible               ${BTN_LOGGEDID}        
    Wait Until Element Is Visible               ${TEXT_BTN_LOGGEDID}    
    Wait Until Element Is Visible               ${BTN_LOGOUT}          
    Wait Until Element Is Visible               ${TXT_BTN_LOGOUT}    
    Wait Until Element Is Visible               ${ICON_LOGOUT}         

Logged Id Screen In Portuguese

    Get Started Portuguese
    Wait Until Element Is Visible               ${TEXT_LOGGEDID} 
    Element Should Contain Text                 ${TEXT_LOGGEDID}              A conta Teste - Automação está sendo usada em outro dispositivo, clique em "Usar aqui" para usar o DigiSac neste dispositivo.  
    Element Should Contain Text                 ${TEXT_BTN_LOGGEDID}          Usar aqui
    Element Should Contain Text                 ${TXT_BTN_LOGOUT}             Logar com outra conta

Logged Id Screen In English

    Get Started English
    Wait Until Element Is Visible               ${TEXT_LOGGEDID}                 
    Element Should Contain Text                 ${TEXT_LOGGEDID}              The Teste - Automação account is being used on another device, click "Use here" to use DigiSac on this device.   
    Element Should Contain Text                 ${TEXT_BTN_LOGGEDID}          Use here
    Element Should Contain Text                 ${TXT_BTN_LOGOUT}             Log in with another account
