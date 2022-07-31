*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Variables ***

${HEADER}                     id=com.ikatec.digisac:id/header
${HEADER_TITLE_PT}            id=com.ikatec.digisac:id/header_text_Contatos
${HEADER_TITLE_EN}            id=com.ikatec.digisac:id/header_text_Contacts
${BTN_SEARCH}                 id=com.ikatec.digisac:id/header_button_search
${SEARCH_SVG}                 id=com.ikatec.digisac:id/header_svg_search
${BTN_HEADER_CANCEL}          id=com.ikatec.digisac:id/header_button_cancel
${TEXT_HEADER_CANCEL}         id=com.ikatec.digisac:id/header_text_cancel
${INPUT_SEARCH}               accessibility_id=com.ikatec.digisac:id/header_input_search 
${CONTAINER_CONTACTS}         id=com.ikatec.digisac:id/contacts-container-contacts
${CARD_CONTACT}               id=com.ikatec.digisac:id/card_container_contact
${AVATAR_CONTACT}             id=com.ikatec.digisac:id/card_avatar_contact
${ICON_CONNECTION}            id=com.ikatec.digisac:id/card_icon_connection
${NAME_CONTACT}               id=com.ikatec.digisac:id/card_text_name-contact
${MESSAGE_CONTACT}            id=com.ikatec.digisac:id/card_text_message-contact
${BTN_CREATE_CONTACT}         id=com.ikatec.digisac:id/contacts-button-create_contact
${BTN_CHAT}                   id=com.ikatec.digisac:id/tab_bar-button_ChatsScreen
${TEXT_CHAT_PT}               id=com.ikatec.digisac:id/tab_bar_Conversas
${TEXT_CHAT_EN}               id=com.ikatec.digisac:id/tab_bar_Chats
${BTN_QUEUE}                  id=com.ikatec.digisac:id/tab_bar-button_QueueScreen
${TEXT_QUEUE_PT}              id=com.ikatec.digisac:id/tab_bar_Fila
${TEXT_QUEUE_EN}              id=com.ikatec.digisac:id/tab_bar_Queue
${BTN_CONTACTS}               id=com.ikatec.digisac:id/tab_bar-button_ContactsScreen
${TEXT_CONTACTS_PT}           id=com.ikatec.digisac:id/tab_bar_Contatos
${TEXT_CONTACTS_EN}           id=com.ikatec.digisac:id/tab_bar_Contacts
${TEXT_EMPTY}                 id=com.ikatec.digisac:id/contacts-text-empty 
#Modal
${MODAL_BUTTON}               id=com.ikatec.digisac:id/modal_bottom
${INDICATOR_MODAL}            id=com.ikatec.digisac:id/modal_indicator
${BTN_CLOSE_MODAL}            id=com.ikatec.digisac:id/modal_button_close-modal
${ICON_CLOSE_MODAL}           id=com.ikatec.digisac:id/modal_icon_close-modal
${TITLE_MODAL}                id=com.ikatec.digisac:id/modal_text_title
${BTN_VIEW_CONTACT}           id=com.ikatec.digisac:id/modal_button_view-contact
${ICON_VIEW_CONTACT}          id=com.ikatec.digisac:id/modal_icon_view-contact
${TEXT_VIEW_CONTACT}          id=com.ikatec.digisac:id/modal_text_view-contact
${BTN_EDIT_CONTACT}           id=com.ikatec.digisac:id/modal_button_edit-contact
${ICON_EDIT_CONTACT}          id=com.ikatec.digisac:id/modal_icon_edit-contact
${TEXT_EDIT_CONTACT}          id=com.ikatec.digisac:id/modal_text_edit-contact
${BTN_DELETE_CONTACT}         id=com.ikatec.digisac:id/modal_button_delete-contact
${ICON_DELETE_CONTACT}        id=com.ikatec.digisac:id/modal_icon_delete-contact
${TEXT_DELETE_CONTACT}        id=com.ikatec.digisac:id/modal_text_delete-contact

*** Test Cases ***
Present The Elements

    Get Started Portuguese
    Wait Until Element Is Visible                   ${HEADER}                
    Wait Until Element Is Visible                   ${HEADER_TITLE_PT}             
    Wait Until Element Is Visible                   ${BTN_SEARCH}            
    Wait Until Element Is Visible                   ${SEARCH_SVG}           
    Click Element                                   ${BTN_SEARCH}
    Wait Until Element Is Visible                   ${BTN_HEADER_CANCEL} 
    Wait Until Element Is Visible                   ${TEXT_HEADER_CANCEL}
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Input Text                                      ${INPUT_SEARCH}                 XXXXXXX
    Wait Until Element Is Visible                   ${TEXT_EMPTY}
    Clear Text                                      ${INPUT_SEARCH}
    Wait Until Page Does Not Contain Element        ${TEXT_EMPTY}
    Input Text                                      ${INPUT_SEARCH}                 Teste automação
    Wait Until Element Is Visible                   ${CONTAINER_CONTACTS}
    Wait Until Element Is Visible                   ${CARD_CONTACT}          
    Wait Until Element Is Visible                   ${AVATAR_CONTACT}        
    Wait Until Element Is Visible                   ${ICON_CONNECTION}      
    Wait Until Element Is Visible                   ${NAME_CONTACT}         
    Wait Until Element Is Visible                   ${MESSAGE_CONTACT}  
    Long Press                                      ${CARD_CONTACT}                 500
    Wait Until Element Is Visible                   ${MODAL_BUTTON}        
    Wait Until Element Is Visible                   ${INDICATOR_MODAL}     
    Wait Until Element Is Visible                   ${BTN_CLOSE_MODAL}     
    Wait Until Element Is Visible                   ${ICON_CLOSE_MODAL}    
    Wait Until Element Is Visible                   ${TITLE_MODAL}         
    Wait Until Element Is Visible                   ${BTN_VIEW_CONTACT}    
    Wait Until Element Is Visible                   ${ICON_VIEW_CONTACT}   
    Wait Until Element Is Visible                   ${TEXT_VIEW_CONTACT}   
    Wait Until Element Is Visible                   ${BTN_EDIT_CONTACT}    
    Wait Until Element Is Visible                   ${ICON_EDIT_CONTACT}   
    Wait Until Element Is Visible                   ${TEXT_EDIT_CONTACT}   
    Wait Until Element Is Visible                   ${BTN_DELETE_CONTACT}  
    Wait Until Element Is Visible                   ${ICON_DELETE_CONTACT} 
    Wait Until Element Is Visible                   ${TEXT_DELETE_CONTACT}
    Click Element                                   ${BTN_CLOSE_MODAL}   
    Wait Until Element Is Visible                   ${BTN_CREATE_CONTACT}  
    Wait Until Element Is Visible                   ${BTN_CHAT}              
    Wait Until Element Is Visible                   ${TEXT_CHAT_PT}                   
    Wait Until Element Is Visible                   ${BTN_QUEUE}             
    Wait Until Element Is Visible                   ${TEXT_QUEUE_PT}                
    Wait Until Element Is Visible                   ${BTN_CONTACTS}          
    Wait Until Element Is Visible                   ${TEXT_CONTACTS_PT}                 
    
Contacts Screen In Portuguese

    Get Started Portuguese
    Wait Until Element Is Visible                   ${HEADER}              
    Element Should Contain Text                     ${HEADER_TITLE_PT}              Contatos                       
    Click Element                                   ${BTN_SEARCH}
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Element Should Contain Text                     ${INPUT_SEARCH}                 Pesquisar por nome ou número
    Element Should Contain Text                     ${TEXT_HEADER_CANCEL}           Cancelar  
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Input Text                                      ${INPUT_SEARCH}                 XXXXXXX
    Wait Until Element Is Visible                   ${TEXT_EMPTY}
    Element Should Contain Text                     ${TEXT_EMPTY}                   Não existem contatos
    Clear Text                                      ${INPUT_SEARCH}
    Wait Until Page Does Not Contain Element        ${TEXT_EMPTY}
    Input Text                                      ${INPUT_SEARCH}                 Teste automação
    Wait Until Element Is Visible                   ${CONTAINER_CONTACTS} 
    Long Press                                      ${CARD_CONTACT}                 100
    Wait Until Element Is Visible                   ${MODAL_BUTTON}
    Element Should Contain Text                     ${TEXT_VIEW_CONTACT}            Visualizar 
    Element Should Contain Text                     ${TEXT_EDIT_CONTACT}            Editar
    Element Should Contain Text                     ${TEXT_DELETE_CONTACT}          Deletar
    Click Element                                   ${BTN_CLOSE_MODAL}   
    Wait Until Element Is Visible                   ${BTN_CREATE_CONTACT}              
    Element Should Contain Text                     ${TEXT_CHAT_PT}                 Conversas          
    Element Should Contain Text                     ${TEXT_QUEUE_PT}                Fila       
    Element Should Contain Text                     ${TEXT_CONTACTS_PT}             Contatos

Contacts Screen In English

    Get Started English
    Wait Until Element Is Visible                   ${HEADER}              
    Element Should Contain Text                     ${HEADER_TITLE_EN}              Contacts                       
    Click Element                                   ${BTN_SEARCH}
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Element Should Contain Text                     ${INPUT_SEARCH}                 Search by name or number
    Element Should Contain Text                     ${TEXT_HEADER_CANCEL}           Cancel  
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Input Text                                      ${INPUT_SEARCH}                 XXXXXXX
    Wait Until Element Is Visible                   ${TEXT_EMPTY}
    Element Should Contain Text                     ${TEXT_EMPTY}                   There are no contacts
    Clear Text                                      ${INPUT_SEARCH}
    Wait Until Page Does Not Contain Element        ${TEXT_EMPTY}
    Input Text                                      ${INPUT_SEARCH}                 Teste automação
    Wait Until Element Is Visible                   ${CONTAINER_CONTACTS} 
    Long Press                                      ${CARD_CONTACT}                 100
    Wait Until Element Is Visible                   ${MODAL_BUTTON}
    Element Should Contain Text                     ${TEXT_VIEW_CONTACT}            View 
    Element Should Contain Text                     ${TEXT_EDIT_CONTACT}            Edit
    Element Should Contain Text                     ${TEXT_DELETE_CONTACT}          Delete
    Click Element                                   ${BTN_CLOSE_MODAL}   
    Wait Until Element Is Visible                   ${BTN_CREATE_CONTACT}              
    Element Should Contain Text                     ${TEXT_CHAT_EN}                 Chats          
    Element Should Contain Text                     ${TEXT_QUEUE_EN}                Queue 
    Element Should Contain Text                     ${TEXT_CONTACTS_EN}             Contacts


  ##Retirar nome no tab
  ## Resta tooltip
  ## Falta contadores da fila
  ## Criação de variáveis de texto
  ## Variéveis no helpers