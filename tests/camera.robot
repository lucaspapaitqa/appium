*** Settings ***

Resource        ../resources/base.robot
Test Setup       Open Session
Test Teardown    Close Session  

*** Test Cases ***
Deve Apresentar Os Elementos

    Get Started Portuguese

    Wait Until Element Is Visible       id=com.ikatec.digisac:id/card_container_contact
    Click Element                       id=com.ikatec.digisac:id/card_container_contact
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/chat_attach_send-midia
    Click Element                       id=com.ikatec.digisac:id/chat_attach_send-midia
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/button-modal_attachment_camera_send-image
    Click Element                       id=com.ikatec.digisac:id/button-modal_attachment_camera_send-image
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/camera-button-camera_mode_toggle
    Click Element                       id=com.ikatec.digisac:id/camera-button-camera_mode_toggle
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/camera-button-camera_type_toggle
    Click Element                       id=com.ikatec.digisac:id/camera-button-camera_type_toggle 

    #Wait Until Element Is Visible       id=com.ikatec.digisac:id/add_contact-button-save
    #Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add_contact-input-internal_name
    #Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add-contact_input_name
    #Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add-contact_input_alternative-name
    #Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add_contact-input-number
    #Wait Until Element Is Visible       accessibility_id=com.ikatec.digisac:id/add_contact-input-note
    #Wait Until Element Is Visible       id=com.ikatec.digisac:id/add-contact_wrapper_service
    #Wait Until Element Is Visible       id=com.ikatec.digisac:id/modal_text_select   