*** Settings ***
Library    AppiumLibrary

*** Variables ***
#Login
${LOGO}             id=com.ikatec.digisac:id/workspace-logo
${LOGO_LOGIN}       id=com.ikatec.digisac:id/login-logo
${LOGO_HEADER}      id=com.ikatec.digisac:id/header_logo
${INPUT_URL}        accessibility_id=com.ikatec.digisac:id/workspace-input-url
${INPUT_EMAIL}      accessibility_id=com.ikatec.digisac:id/login-input-email
${INPUT_PASSWORD}   accessibility_id=com.ikatec.digisac:id/login-input-password
${BTN_CONNECT}      id=com.ikatec.digisac:id/workspace-button-connect
${BTN_PT}           id=com.ikatec.digisac:id/workspace-button-portuguese
${BTN_EN}           id=com.ikatec.digisac:id/workspace-button-english
${BTN_LOGIN}        id=com.ikatec.digisac:id/login-button-login
${TEXT_UPDATE}      id=com.ikatec.digisac:id/workspace-text-update
${URL}              qa6.digisac.co
${LOGIN}            automacao@automacao.com
${PASSWORD}         0123
#Header
${HEADER_TITLE}          id=com.ikatec.digisac:id/header-text-title
${SEARCH_SVG}            id=com.ikatec.digisac:id/header-svg-search
${INPUT_SEARCH}          accessibility_id=com.ikatec.digisac:id/header-input-search   
${BTN_SEARCH}            id=id=com.ikatec.digisac:id/header-button-search
${BTN_HEADER_CANCEL}     id=id=com.ikatec.digisac:id/header-button-cancel
${TEXT_HEADER_CANCEL}    com.ikatec.digisac:id/header-text-cancel
#Tab
${BTN_CHAT}              id=com.ikatec.digisac:id/tab_bar-button-ChatsScreen
${TEXT_CHAT}             id=com.ikatec.digisac:id/tab_bar-Chats
${BTN_QUEUE}             id=com.ikatec.digisac:id/tab_bar-button-QueueScreen
${TEXT_QUEUE}            id=com.ikatec.digisac:id/tab_bar-Queue
${BTN_CONTACTS}          id=com.ikatec.digisac:id/tab_bar-button-ContactsScreen
${TEXT_CONTACTS}         id=com.ikatec.digisac:id/tab_bar-Contacts

*** Keywords ***
Get Started Portuguese

    Wait Until Page Does Not Contain Element      ${TEXT_UPDATE}
    Wait Until Page Does Not Contain              Looking for updates...
    Wait Until Page Does Not Contain              Procurando atualizações...
    Wait Until Element Is Visible                 ${BTN_PT}
    Click Element                                 ${BTN_PT}
    Wait Until Page Does Not Contain Element      ${TEXT_UPDATE}
    Click Element                                 ${INPUT_URL}
    Input Text                                    ${INPUT_URL}              ${URL}
    Click Element                                 ${LOGO} 
    Wait Until Element Is Visible                 ${BTN_CONNECT}
    Click Element                                 ${BTN_CONNECT}
    Wait Until Element Is Visible                 ${LOGO_LOGIN}
    Click Element                                 ${INPUT_EMAIL}
    Input Text                                    ${INPUT_EMAIL}           ${LOGIN}
    Click Element                                 ${LOGO_LOGIN} 
    Wait Until Element Is Visible                 ${INPUT_PASSWORD}
    Click Element                                 ${INPUT_PASSWORD}
    Input Password                                ${INPUT_PASSWORD}        ${PASSWORD} 
    Click Element                                 ${LOGO_LOGIN} 
    Wait Until Element Is Visible                 ${BTN_LOGIN}
    Click Element                                 ${BTN_LOGIN}
    Wait Until Element Is Visible                 ${LOGO_HEADER}           

Get Started English

    Wait Until Page Does Not Contain Element      ${TEXT_UPDATE}
    Wait Until Page Does Not Contain              Looking for updates...
    Wait Until Page Does Not Contain              Procurando atualizações...
    Wait Until Element Is Visible                 ${BTN_EN}
    Click Element                                 ${BTN_EN}
    Wait Until Page Does Not Contain Element      ${TEXT_UPDATE}
    Click Element                                 ${INPUT_URL}
    Input Text                                    ${INPUT_URL}              ${URL}
    Click Element                                 ${LOGO} 
    Wait Until Element Is Visible                 ${BTN_CONNECT}
    Click Element                                 ${BTN_CONNECT}
    Wait Until Element Is Visible                 ${LOGO_LOGIN}
    Click Element                                 ${INPUT_EMAIL}
    Input Text                                    ${INPUT_EMAIL}           ${LOGIN}
    Click Element                                 ${LOGO_LOGIN} 
    Wait Until Element Is Visible                 ${INPUT_PASSWORD}
    Click Element                                 ${INPUT_PASSWORD}
    Input Password                                ${INPUT_PASSWORD}        ${PASSWORD} 
    Click Element                                 ${LOGO_LOGIN} 
    Wait Until Element Is Visible                 ${BTN_LOGIN}
    Click Element                                 ${BTN_LOGIN}
    Wait Until Element Is Visible                 ${LOGO_HEADER}      


