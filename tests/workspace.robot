*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Variables ***

${LOGO}             id=com.ikatec.digisac:id/workspace-logo
${TEXT_HELPER}      id=com.ikatec.digisac:id/workspace-text-helper
${INPUT_URL}        accessibility_id=com.ikatec.digisac:id/workspace-input-url
${BTN_CONNECT}      id=com.ikatec.digisac:id/workspace-button-connect
${BTN_EN}           id=com.ikatec.digisac:id/workspace-button-english
${BTN_PT}           id=com.ikatec.digisac:id/workspace-button-portuguese
${BTN_THEME}        id=com.ikatec.digisac:id/workspace-button-theme

*** Test Cases ***
Deve Apresentar Os Elementos

    Wait Until Element Is Visible       ${LOGO}
    Wait Until Element Is Visible       ${TEXT_HELPER}
    Wait Until Element Is Visible       ${INPUT_URL}
    Wait Until Element Is Visible       ${BTN_CONNECT}
    Wait Until Element Is Visible       ${BTN_EN}
    Wait Until Element Is Visible       ${BTN_PT}
    Wait Until Element Is Visible       ${BTN_THEME}

Deve Apresentar A Internacionalização

    Click Element                               ${BTN_PT}
    Element Text Should Be                      ${TEXT_HELPER}                  Digite a URL de acesso em que você deseja se conectar
    Text Should Be Visible                      Conectar
    Text Should Be Visible                      Trocar tema
    Click Element                               ${BTN_CONNECT}
    Wait Until Page Contains Element            id=android:id/alertTitle        
    Element Text Should Be                      id=android:id/alertTitle        URL inválida
    Element Text Should Be                      id=android:id/message           Por favor, verifique a URL digitada e tente novamente.
    Click Element                               id=android:id/button1
    Click Element                               ${BTN_EN}               
    Wait Until Page Contains                    ${TEXT_HELPER}                  Enter the login URL you want to connect to
    Text Should Be Visible                      Conectar
    Text Should Be Visible                      Change theme
    Click Element                               ${BTN_CONNECT}
    Wait Until Page Contains Element            id=android:id/alertTitle        
    Element Text Should Be                      id=android:id/alertTitle        Invalid URL
    Element Text Should Be                      id=android:id/message           Please check the entered URL and try again.
    Click Element                               id=android:id/button1
    Wait Until Page Contains Element            ${INPUT_URL} 
    Input Text                                  ${INPUT_URL}        qa6.digisac.co
    Click Element                               ${BTN_CONNECT}
    Wait Until Page Contains                    ${LOGO_LOGIN}
            
  

