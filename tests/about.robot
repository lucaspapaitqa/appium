*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Variables ***

#${LOGO}             id=com.ikatec.digisac:id/about-logo
#${API_LABEL}        id=com.ikatec.digisac:id/about-text-api_label
#${API_TEXT}         id=com.ikatec.digisac:id/about-text-api
#${FRONT_LABEL}      id=com.ikatec.digisac:id/about-text-front_label
#${FRONT_TEXT}       id=com.ikatec.digisac:id/about-text-front
#${NAME_LABEL}       id=com.ikatec.digisac:id/about-text-name_label
#${NAME_TEXT}        id=com.ikatec.digisac:id/about-text-name
#${EMAIL_LABEL}      id=com.ikatec.digisac:id/about-text-email_label
#${EMAIL_TEXT}       id=com.ikatec.digisac:id/about-text-email
#${BTN_EN}           id=com.ikatec.digisac:id/about-button-english
#${BTN_PT}           id=com.ikatec.digisac:id/about-button-portuguese
#${BTN_UPDATE}       id=com.ikatec.digisac:id/about-button-update
#${BTN_LOGOUT}       id=com.ikatec.digisac:id/about-button-logout
#${VERSION_TEXT}     id=com.ikatec.digisac:id/about-text-version

*** Test Cases ***
Deve Apresentar Os Elementos

    Get Started Portuguese
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-button-navigate_to_about
    Click Element                       id=com.ikatec.digisac:id/header-button-navigate_to_about
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-logo
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-icon-moon
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-api_label
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-api
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-front_label
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-front
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-name_label
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-name
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-email_label      
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-email       
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-button-english          
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-button-portuguese           
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-button-update       
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-button-logout      
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/about-text-version
    Click Element                       id=com.ikatec.digisac:id/about-button-portuguese
    Wait Until Page Contains            Nome
    Text Should Be Visible              Atualizar Digisac
    Text Should Be Visible              Sair
    Text Should Be Visible              Versão
    Click Element                       id=com.ikatec.digisac:id/about-button-english
    Wait Until Page Contains            Name
    Text Should Be Visible              Update Digisac
    Text Should Be Visible              Logout
    Text Should Be Visible              Version
    Click Element                       id=com.ikatec.digisac:id/about-button-logout