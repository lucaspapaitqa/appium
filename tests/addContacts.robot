*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Test Cases ***
Deve Apresentar Os Elementos

    Get Started Portuguese

    Wait Until Element Is Visible       id=com.ikatec.digisac:id/contacts-button-create_contact
    Click Element                       id=com.ikatec.digisac:id/contacts-button-create_contact
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/add_contact-text-title
    #Wait Until Element Is Visible       id=com.ikatec.digisac:id/add_contact-button-save
    Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add_contact-input-internal_name
    Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add-contact_input_name
    Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add-contact_input_alternative-name
    Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add_contact-input-number
    Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add_contact-input-note
    #Wait Until Element Is Visible       id=com.ikatec.digisac:id/add-contact_wrapper_service
    #Wait Until Element Is Visible       id=com.ikatec.digisac:id/modal_text_select
    Text Should Be Visible              Novo contato
    Text Should Be Visible              Cadastrar contato
    Text Should Be Visible              Nome no DigiSac
    Text Should Be Visible              Nome no perfil
    Text Should Be Visible              Nome na agenda do aparelho
    Text Should Be Visible              Selecione a conexão
    Text Should Be Visible              Selecione a tag
    Text Should Be Visible              Adicione uma observação...
    #Text Should Be Visible              Departamento padrão para chamados...
    #Text Should Be Visible              Salvar contato
    Input Text                          accessibility_id=com.ikatec.digisac:id/add_contact-input-internal_name          Teste
    Input Text                          accessibility_id=com.ikatec.digisac:id/add-contact_input_name                   Teste
    Input Text                          accessibility_id=com.ikatec.digisac:id/add-contact_input_alternative-name       Teste
    Input Text                          accessibility_id=com.ikatec.digisac:id/add_contact-input-number                 00000
    Input Text                          accessibility_id=com.ikatec.digisac:id/add_contact-input-note                   Teste
    #Click Element                       id=com.ikatec.digisac:id/add-contact_wrapper_service                                 
    #Click Element                       id=com.ikatec.digisac:id/add_contact-button-save 
    #Click Element                       id=com.ikatec.digisac:id/modal_text_select 