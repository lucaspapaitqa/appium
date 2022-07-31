*** Settings ***
Resource          helpers.robot

*** Keywords ***
Open Session
    Set Appium Timeout      30
    Open Application        http://localhost:4723/wd/hub
    ...                     automationName=UiAutomator2    
    ...                     platformName=Android
    ...                    	deviceName=Android Emulator
    ...                     app=${EXECDIR}/app/digisac.apk

Close Session
    Close Application


    