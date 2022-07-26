*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Variables ***

${LOGO_ABOUT}               id=com.ikatec.digisac:id/about-logo
${ABOUT_BACK}               id=com.ikatec.digisac:id/about-svg-back
${SUN_ICO}                  id=com.ikatec.digisac:id/about-icon-sun
${MOON_ICO}                 id=com.ikatec.digisac:id/about-icon-moon
${API_LABEL}                id=com.ikatec.digisac:id/about-text-api_label
${API_TEXT}                 id=com.ikatec.digisac:id/about-text-api
${FRONT_LABEL}              id=com.ikatec.digisac:id/about-text-front_label
${FRONT_TEXT}               id=com.ikatec.digisac:id/about-text-front
${NAME_LABEL}               id=com.ikatec.digisac:id/about-text-name_label
${NAME_TEXT}                id=com.ikatec.digisac:id/about-text-name
${EMAIL_LABEL}              id=com.ikatec.digisac:id/about-text-email_label
${EMAIL_TEXT}               id=com.ikatec.digisac:id/about-text-email
${TEXT_EN}                  id=com.ikatec.digisac:id/about-text-english
${TEXT_PT}                  id=com.ikatec.digisac:id/about-text-portuguese
${BTN_UPDATE}               id=com.ikatec.digisac:id/about-button-update
${BTN_LOGOUT}               id=com.ikatec.digisac:id/about-button-logout
${VERSION_TEXT}             id=com.ikatec.digisac:id/about-text-version

*** Test Cases ***
Present The Elements

    Get Started Portuguese
    Click Element                           ${LOGO_HEADER}
    Wait Until Element Is Visible           ${ABOUT_BACK}
    Wait Until Element Is Visible           ${LOGO_ABOUT}
    Wait Until Element Is Visible           ${API_LABEL}
    Wait Until Element Is Visible           ${API_TEXT}                
    Wait Until Element Is Visible           ${FRONT_LABEL}          
    Wait Until Element Is Visible           ${FRONT_TEXT}
    Wait Until Element Is Visible           ${NAME_LABEL}
    Wait Until Element Is Visible           ${NAME_TEXT}               
    Wait Until Element Is Visible           ${EMAIL_LABEL}
    Wait Until Element Is Visible           ${EMAIL_TEXT} 
    Wait Until Element Is Visible           ${TEXT_EN}
    Wait Until Element Is Visible           ${TEXT_PT}                 
    Wait Until Element Is Visible           ${BTN_UPDATE}            
    Wait Until Element Is Visible           ${BTN_LOGOUT}              
    Wait Until Element Is Visible           ${VERSION_TEXT}  


Mudar de tema

    Get Started Portuguese
    Click Element                           ${LOGO_HEADER} 
    Wait Until Element Is Visible           ${MOON_ICO}
    Click Element                           ${MOON_ICO}
    Wait Until Element Is Visible           ${SUN_ICO}
    Click Element                           ${SUN_ICO}
    Wait Until Element Is Visible           ${MOON_ICO}


Mudança De Idioma

    Get Started Portuguese
    Click Element                           ${LOGO_HEADER} 
    Wait Until Element Is Visible           ${LOGO_ABOUT}
    Click Element                           ${TEXT_PT}
    Text Should Be Visible                  Nome
    Text Should Be Visible                  Email
    Text Should Be Visible                  Atualizar Digisac
    Text Should Be Visible                  Sair
    Text Should Be Visible                  Versão
    Click Element                           ${TEXT_EN}
    Text Should Be Visible                  Name
    Text Should Be Visible                  Update Digisac
    Text Should Be Visible                  Logout
    Text Should Be Visible                  Version