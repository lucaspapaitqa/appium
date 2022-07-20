*** Settings ***
Library    AppiumLibrary

*** Variables ***
    #Login
${LOGO}             id=com.ikatec.digisac:id/workspace-logo
${INPUT_URL}        accessibility_id=com.ikatec.digisac:id/workspace-input-url
${BTN_CONNECT}      id=com.ikatec.digisac:id/workspace-button-connect
${LOGO_LOGIN}       id=com.ikatec.digisac:id/login-logo
${BTN_LOGIN}        id=com.ikatec.digisac:id/login-button-login
${LOGO_HEADER}      id=com.ikatec.digisac:id/header-logo

*** Keywords ***

Get Started

    Wait Until Page Contains            ${LOGO}
    Input Text                          ${INPUT_URL}        qa6.digisac.co
    Click Element                       ${BTN_CONNECT}
    Wait Until Page Contains            ${LOGO_LOGIN}
    Input Text                          ${INPUT_URL}        automacao@automacao.com
    Input Password                      ${INPUT_URL}        0123
    Click Element                       ${BTN_LOGIN}
    Wait Until Page Contains            ${LOGO_HEADER}           


