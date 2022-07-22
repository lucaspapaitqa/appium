*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Variables ***

${LOGO}             id=com.ikatec.digisac:id/workspace-logo
${LOGO_LOGIN}       id=com.ikatec.digisac:id/login-logo
${TEXT_HELPER}      id=com.ikatec.digisac:id/workspace-text-helper
${INPUT_URL}        accessibility_id=com.ikatec.digisac:id/workspace-input-url
${BTN_CONNECT}      id=com.ikatec.digisac:id/workspace-button-connect
${BTN_EN}           id=com.ikatec.digisac:id/workspace-button-english
${BTN_PT}           id=com.ikatec.digisac:id/workspace-button-portuguese
${BTN_THEME}        id=com.ikatec.digisac:id/workspace-button-theme
${ALERT_TITLE}      id=android:id/alertTitle 
${ALERT_MESSAGE}    id=android:id/message
${ALERT_BTN1}       id=android:id/button1
${URL}              qa6.digisac.co


*** Test Cases ***
Present The Elements

    Wait Until Element Is Visible       ${LOGO}
    Wait Until Element Is Visible       ${TEXT_HELPER}
    Wait Until Element Is Visible       ${INPUT_URL}
    Wait Until Element Is Visible       ${BTN_CONNECT}
    Wait Until Element Is Visible       ${BTN_EN}
    Wait Until Element Is Visible       ${BTN_PT}
    Wait Until Element Is Visible       ${BTN_THEME}

Login In Portuguese

    Wait Until Element Is Visible               ${BTN_PT}
    Click Element                               ${BTN_PT}
    Wait Until Page Contains                    Digite a URL de acesso em que você deseja se conectar
    Text Should Be Visible                      Conectar
    Text Should Be Visible                      Trocar tema
    Click Element                               ${BTN_CONNECT}
    Wait Until Page Contains Element            ${ALERT_TITLE}         
    Element Text Should Be                      ${ALERT_TITLE}                                              URL inválida
    Element Text Should Be                      ${ALERT_MESSAGE}                                            Por favor, verifique a URL digitada e tente novamente.
    Click Element                               ${ALERT_BTN1}
    Wait Until Page Contains Element            ${INPUT_URL} 
    Input Text                                  ${INPUT_URL}                                                ${URL}
    Click Element                               ${BTN_CONNECT}
    Wait Until Element Is Visible               ${LOGO_LOGIN}

Login In English


    Wait Until Element Is Visible               ${BTN_EN}
    Click Element                               ${BTN_EN}               
    Wait Until Page Contains                    Enter the login URL you want to connect to
    Text Should Be Visible                      Connect
    Text Should Be Visible                      Change theme
    Click Element                               ${BTN_CONNECT}
    Wait Until Page Contains Element            ${ALERT_TITLE}         
    Element Text Should Be                      ${ALERT_TITLE}                                              Invalid URL
    Element Text Should Be                      ${ALERT_MESSAGE}                                            Please check the entered URL and try again.
    Click Element                               ${ALERT_BTN1}
    Wait Until Page Contains Element            ${INPUT_URL} 
    Input Text                                  ${INPUT_URL}                                                    ${URL}
    Click Element                               ${BTN_CONNECT}
    Wait Until Element Is Visible               ${LOGO_LOGIN}
            
  

