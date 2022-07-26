*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Test Cases ***
Deve Apresentar Os Elementos

    Get Started Portuguese
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/loggedIn-text-main
    Text Should Be Visible              A conta Teste - Automação está sendo usada em outro dispositivo, clique em "Usar aqui" para usar o DigiSac neste dispositivo.
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/loggedIn-button-takeover
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/loggedIn-button-logout
    Text Should Be Visible              Usar aqui
    Text Should Be Visible              Logar com outra conta
    Click Element                       id=com.ikatec.digisac:id/loggedIn-button-takeover