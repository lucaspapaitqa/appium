*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Variables ***

${HEADER}                     id=com.ikatec.digisac:id/header
${HEADER_TITLE_PT}            id=com.ikatec.digisac:id/header_text_Fila
${HEADER_TITLE_EN}            id=com.ikatec.digisac:id/header_text_Queue
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
${MESSAGE_TEXT_STUATUS}       id=com.ikatec.digisac:id/card_text_status-message
${MESSAGE_TEXT_TIME}          id=com.ikatec.digisac:id/card_text_time-message
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
${TEXT_EMPTY_QUEUE_PT}        xpath=//android.widget.TextView[contains(@text, 'Não existem chamados na fila')]
${TEXT_EMPTY_QUEUE_EN}        xpath=//android.widget.TextView[contains(@text, 'There are no tickets in the queue')]
#Modal
${MODAL_BUTTON}               id=com.ikatec.digisac:id/modal_bottom
${INDICATOR_MODAL}            id=com.ikatec.digisac:id/modal_indicator
${BTN_CLOSE_MODAL}            id=com.ikatec.digisac:id/modal_button_close-modal
${ICON_CLOSE_MODAL}           id=com.ikatec.digisac:id/modal_icon_close-modal
${TITLE_MODAL}                id=com.ikatec.digisac:id/modal_text_title
${BTN_TRANSFER_TICKET}        id=com.ikatec.digisac:id/modal_btn_transfer
${ICON_TRANSFER_TICKET}       id=com.ikatec.digisac:id/modal_icon_transfer
${TEXT_TRANSFER_TICKET}       id=com.ikatec.digisac:id/modal_text_transfer
${BTN_CLOSE_TICKET}           id=com.ikatec.digisac:id/modal_btn_close-ticket
${ICON_CLOSE_TICKET}          id=com.ikatec.digisac:id/modal_icon_close-ticket
${TEXT_CLOSE_TICKET}          id=com.ikatec.digisac:id/modal_text_close-ticket
${BTN_MARK_TICKET}            id=com.ikatec.digisac:id/modal_btn_mark-as-unread
${ICON_MARK_TICKET}           id=com.ikatec.digisac:id/modal_icon_mark-as-unread
${TEXT_MARK_TICKET}           xpath=//android.widget.TextView[contains(@text, 'Marcar como não lido')]
${TEXT_MARK_TICKET_EN}        xpath=//android.widget.TextView[contains(@text, 'Mark as unread')]  

*** Test Cases ***
Present The Elements

    Get Started Portuguese
    Wait Until Element Is Visible                   ${BTN_QUEUE}          
    Click Element                                   ${BTN_QUEUE} 
    Wait Until Element Is Visible                   ${HEADER_TITLE_PT}  
    Click Element                                   ${BTN_SEARCH} 
    Wait Until Element Is Visible                   ${BTN_HEADER_CANCEL}        
    Wait Until Element Is Visible                   ${TEXT_HEADER_CANCEL}   
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Input Text                                      ${INPUT_SEARCH}                 XXXXXXX
    Wait Until Element Is Visible                   ${TEXT_EMPTY_QUEUE_PT} 
    Clear Text                                      ${INPUT_SEARCH}
    Wait Until Page Does Not Contain Element        ${TEXT_EMPTY_QUEUE_PT}
    Wait Until Element Is Visible                   ${CARD_CONTACT}          
    Wait Until Element Is Visible                   ${AVATAR_CONTACT}        
    Wait Until Element Is Visible                   ${ICON_CONNECTION}      
    Wait Until Element Is Visible                   ${NAME_CONTACT}         
    Wait Until Element Is Visible                   ${MESSAGE_CONTACT}  
    Wait Until Element Is Visible                    ${MESSAGE_TEXT_STUATUS}     
    Wait Until Element Is Visible                    ${MESSAGE_TEXT_TIME} 
    Long Press                                      ${CARD_CONTACT}                 500
    Wait Until Element Is Visible                   ${MODAL_BUTTON}        
    Wait Until Element Is Visible                   ${INDICATOR_MODAL}     
    Wait Until Element Is Visible                   ${BTN_CLOSE_MODAL}     
    Wait Until Element Is Visible                   ${ICON_CLOSE_MODAL}    
    Wait Until Element Is Visible                   ${TITLE_MODAL}     
    Wait Until Element Is Visible                   ${BTN_TRANSFER_TICKET}       
    Wait Until Element Is Visible                   ${ICON_TRANSFER_TICKET}       
    Wait Until Element Is Visible                   ${TEXT_TRANSFER_TICKET}       
    Wait Until Element Is Visible                   ${BTN_CLOSE_TICKET}          
    Wait Until Element Is Visible                   ${ICON_CLOSE_TICKET}          
    Wait Until Element Is Visible                   ${TEXT_CLOSE_TICKET}          
    Wait Until Element Is Visible                   ${BTN_MARK_TICKET}        
    Wait Until Element Is Visible                   ${ICON_MARK_TICKET}        
    Wait Until Element Is Visible                   ${TEXT_MARK_TICKET}      
    Click Element                                   ${BTN_CLOSE_MODAL}   
    Wait Until Element Is Visible                   ${BTN_CHAT}              
    Wait Until Element Is Visible                   ${TEXT_CHAT_PT}                   
    Wait Until Element Is Visible                   ${BTN_QUEUE}             
    Wait Until Element Is Visible                   ${TEXT_QUEUE_PT}                
    Wait Until Element Is Visible                   ${BTN_CONTACTS}          
    Wait Until Element Is Visible                   ${TEXT_CONTACTS_PT}                 
    
Queue Screen In Portuguese

    Get Started Portuguese
    Wait Until Element Is Visible                   ${BTN_QUEUE}          
    Click Element                                   ${BTN_QUEUE}  
    Wait Until Page Contains                        Fila                
    Element Should Contain Text                     ${HEADER_TITLE_PT}              Fila                       
    Click Element                                   ${BTN_SEARCH}
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Element Should Contain Text                     ${INPUT_SEARCH}                 Pesquisar por nome ou número
    Element Should Contain Text                     ${TEXT_HEADER_CANCEL}           Cancelar  
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Input Text                                      ${INPUT_SEARCH}                 XXXXXXX
    Wait Until Element Is Visible                   ${TEXT_EMPTY_QUEUE_PT}
    Element Should Contain Text                     ${TEXT_EMPTY_QUEUE_PT}          Não existem chamados na fila
    Clear Text                                      ${INPUT_SEARCH}
    Wait Until Page Does Not Contain Element        ${TEXT_EMPTY_QUEUE_PT}
    Long Press                                      ${CARD_CONTACT}                 500
    Wait Until Element Is Visible                   ${MODAL_BUTTON}
    Element Should Contain Text                     ${TEXT_TRANSFER_TICKET}         Transferir 
    Element Should Contain Text                     ${TEXT_CLOSE_TICKET}            Fechar
    Element Should Contain Text                     ${TEXT_MARK_TICKET}             Marcar como não lido
    Click Element                                   ${BTN_CLOSE_MODAL} 
    Wait Until Element Is Visible                   ${TEXT_CHAT_PT} 
    Element Should Contain Text                     ${TEXT_CHAT_PT}                 Conversas          
    Element Should Contain Text                     ${TEXT_QUEUE_PT}                Fila       
    Element Should Contain Text                     ${TEXT_CONTACTS_PT}             Contatos

Queue Screen In English

    Get Started English
    Wait Until Element Is Visible                   ${BTN_QUEUE}          
    Click Element                                   ${BTN_QUEUE}    
    Wait Until Page Contains                        Queue            
    Element Should Contain Text                     ${HEADER_TITLE_EN}              Queue                       
    Click Element                                   ${BTN_SEARCH}
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Element Should Contain Text                     ${INPUT_SEARCH}                 Search by name or number
    Element Should Contain Text                     ${TEXT_HEADER_CANCEL}           Cancel  
    Wait Until Element Is Visible                   ${INPUT_SEARCH}
    Input Text                                      ${INPUT_SEARCH}                 XXXXXXX
    Wait Until Element Is Visible                   ${TEXT_EMPTY_QUEUE_EN}
    Element Should Contain Text                     ${TEXT_EMPTY_QUEUE_EN}          There are no tickets in the queue
    Clear Text                                      ${INPUT_SEARCH}
    Wait Until Page Does Not Contain Element        ${TEXT_EMPTY_QUEUE_EN}
    Long Press                                      ${CARD_CONTACT}                 500
    Wait Until Element Is Visible                   ${MODAL_BUTTON}
    Element Should Contain Text                     ${TEXT_TRANSFER_TICKET}         Transfer 
    Element Should Contain Text                     ${TEXT_CLOSE_TICKET}            Close
    Element Should Contain Text                     ${TEXT_MARK_TICKET_EN}          Mark as unread
    Click Element                                   ${BTN_CLOSE_MODAL}       
    Wait Until Element Is Visible                   ${TEXT_CHAT_EN} 
    Element Should Contain Text                     ${TEXT_CHAT_EN}                 Chats         
    Element Should Contain Text                     ${TEXT_QUEUE_EN}                Queue       
    Element Should Contain Text                     ${TEXT_CONTACTS_EN}             Contacts