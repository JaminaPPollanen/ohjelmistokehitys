*** Settings ***
Documentation    Testing of creating options for questions
Resource    ../Resources/common_functionalities.robot
Library    SeleniumLibrary      timeout=30s

Test Setup    Starting Backend Side
Test Teardown    Finish TestCase
Resource    ../Resources/common_functionalities.robot
#Tama komento ajaa automaatiotestin: robot -d results Tests/3creating_options.robot
*** Variables ***
${ADD_NEW_OPTION}   xpath://button[contains(text(), "Add new option")]
${SEND_OPTIONS}     xpath://button[contains(text(), "Send Options")]
${OPTION_INPUT}     xpath://*[@id="option"]
${QUESTION3}        xpath:/html/body/div/table/tbody/tr[4]/td[5]/a
${QUESTION4}        xpath:/html/body/div/table/tbody/tr[5]/td[5]/a
${QUESTION5}        xpath:/html/body/div/table/tbody/tr[6]/td[5]/a
${QUESTION6}        xpath:/html/body/div/table/tbody/tr[7]/td[5]/a

*** Test Cases ***
Creating options
    [Documentation]    Creating options
    [Tags]    Functional
    Click "Testi" Questionnaire "Show Questions"
    Adding options to kysymys3
    Adding Options To Kysymys4
    Adding Options To Kysymys5
    Adding Options To Kysymys6
    Return To Main Page

*** Keywords ***
Adding Options To Kysymys3
    Click Element    ${QUESTION3}
    Page Should Contain    Testi kysymys3
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto3.1
    Click Button    ${SEND_OPTIONS}
    Click Element    ${QUESTION3}
    Page Should Contain    Testi kysymys3
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto3.2
    Click Button    ${SEND_OPTIONS}
    Sleep   1s
    Wait Until Page Contains    Vaihtoehto3.2

Adding Options To Kysymys4
    Click Element    ${QUESTION4}
    Page Should Contain    Testi kysymys4
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto4.1
    Click Button    ${SEND_OPTIONS}
    Click Element    ${QUESTION4}
    Page Should Contain    Testi kysymys4
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto4.2
    Click Button    ${SEND_OPTIONS}
    Sleep   1s
    Wait Until Page Contains    Vaihtoehto4.2

Adding Options To Kysymys5
    Click Element    ${QUESTION5}
    Page Should Contain    Testi kysymys5
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto5.1
    Click Button    ${SEND_OPTIONS}
    Click Element    ${QUESTION5}
    Page Should Contain    Testi kysymys5
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto5.2
    Click Button    ${SEND_OPTIONS}
    Sleep   1s
    Wait Until Page Contains    Vaihtoehto5.2

Adding Options To Kysymys6
    Click Element    ${QUESTION6}
    Page Should Contain    Testi kysymys6
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto6.1
    Click Button    ${SEND_OPTIONS}
    Click Element    ${QUESTION6}
    Page Should Contain    Testi kysymys6
    Click Button    ${ADD_NEW_OPTION}
    Input Text    ${OPTION_INPUT}   Vaihtoehto6.2
    Click Button    ${SEND_OPTIONS}
    Sleep   1s
    Wait Until Page Contains    Vaihtoehto6.2