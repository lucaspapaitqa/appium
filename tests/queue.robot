*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Test Cases ***
Deve Apresentar Os Elementos

    Get Started Portuguese
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/tab_bar-button-ChatsScreen
    #Click Element                       id=com.ikatec.digisac:id/tab_bar-button-ChatsScreen
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/tab_bar-button-ContactsScreen
    Click Element                       id=com.ikatec.digisac:id/tab_bar-button-ContactsScreen
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/tab_bar-button-QueueScreen
    Click Element                       id=com.ikatec.digisac:id/tab_bar-button-QueueScreen
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-button-search
    Text Should Be Visible              Fila
    Click Element                       id=com.ikatec.digisac:id/header-button-search
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-button-cancel
    Click Element                       id=com.ikatec.digisac:id/header-button-cancel
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-text-title
    Text Should Be Visible              Fila
    Text Should Be Visible              Conversas
    Text Should Be Visible              Fila
    Text Should Be Visible              Contatos