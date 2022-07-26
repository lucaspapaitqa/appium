*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Test Cases ***
Deve Apresentar Os Elementos

    Get Started Portuguese
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/tab_bar-button-ChatsScreen
    #Click Element                       id=com.ikatec.digisac:id/tab_bar-button-ChatsScreen
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/tab_bar-button-QueueScreen
    Click Element                       id=com.ikatec.digisac:id/tab_bar-button-QueueScreen
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/tab_bar-button-ContactsScreen
    Click Element                       id=com.ikatec.digisac:id/tab_bar-button-ContactsScreen
    Text Should Be Visible              Contatos
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/contacts-button-create_contact
    Click Element                       id=com.ikatec.digisac:id/contacts-button-create_contact
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-button-alt
    Click Element                       id=com.ikatec.digisac:id/header-button-alt
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-button-search
    Click Element                       id=com.ikatec.digisac:id/header-button-search
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-button-cancel
    Click Element                       id=com.ikatec.digisac:id/header-button-cancel
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/header-text-title
    Text Should Be Visible              Contatos
    Text Should Be Visible              Conversas
    Text Should Be Visible              Fila
    Text Should Be Visible              Contatos