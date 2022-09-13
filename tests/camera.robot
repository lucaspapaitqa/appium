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
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/camera-button-photo
    Click Element                       id=com.ikatec.digisac:id/camera-button-photo 
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/send-image_camera_submit
    Click Element                       id=com.ikatec.digisac:id/send-image_camera_submit
    Wait Until Element Is Visible       id=com.ikatec.digisac:id/ticket_view_show 