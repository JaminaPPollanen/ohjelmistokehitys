*** Settings ***
Documentation    Testing functionality of creating questions for questionnaire
Resource    ../Resources/common_functionalities.robot
Library    SeleniumLibrary      timeout=30s
#Taman automaatiotestin ajokommentti: robot -d results Tests/2creating_questions_for_questionnaire.robot
Test Setup    Starting Backend Side
Test Teardown    Finish Testcase
*** Variables ***

*** Test Cases ***
Creating Questions
    [Documentation]    Creating questions for questionnaire
    [Tags]    Functional

    Click "Testi" Questionnaire "Show Questions"
    Press "Add New Question" button
    Add Text Yes Required Question
    Press "Add New Question" button
    Add Text No Required Question
    Press "Add New Question" button
    Add Radiobutton No Required Question
    Press "Add New Question" button
    Add Radiobutton Yes Required Question
    Press "Add New Question" button
    Add Checkbox No Required Question
    Press "Add New Question" button
    Add Checkbox Yes Required Question
    Return To Main Page

*** Keywords ***

Add Text No Required Question
    Wait Until Page Contains Element    xpath:/html/body/div/a
    Input Text    xpath://*[@id="content"]      Testi kysymys2
    #Choosing type
    Click Element    xpath:/html/body/div/form/div/div[2]/select
    Sleep   1s
    Click Element    xpath:/html/body/div/form/div/div[2]/select/option[1]
    #Choosing requirement
    Click Element    xpath://*[@id="isRequired2"]
    Click Button    xpath:/html/body/div/form/input[2]
    Page Should Contain    Testi kysymys2

Add Text Yes Required Question
    Wait Until Page Contains Element    xpath:/html/body/div/a
    Input Text    xpath://*[@id="content"]      Testi kysymys1
    #Choosing type
    Click Element    xpath:/html/body/div/form/div/div[2]/select
    Sleep   1s
    Click Element    xpath:/html/body/div/form/div/div[2]/select/option[1]
    #Choosing requirement
    Click Element    xpath://*[@id="isRequired1"]
    Click Button    xpath:/html/body/div/form/input[2]
    Page Should Contain    Testi kysymys1

Add Radiobutton No Required Question
    Wait Until Page Contains Element    xpath:/html/body/div/a
    Input Text    xpath://*[@id="content"]      Testi kysymys3
    #Choosing type
    Click Element    xpath:/html/body/div/form/div/div[2]/select
    Sleep   1s
    Click Element    xpath:/html/body/div/form/div/div[2]/select/option[2]
    #Choosing requirement
    Click Element    xpath://*[@id="isRequired2"]
    Click Button    xpath:/html/body/div/form/input[2]
    Page Should Contain    Testi kysymys3

Add Radiobutton Yes Required Question
    Wait Until Page Contains Element    xpath:/html/body/div/a
    Input Text    xpath://*[@id="content"]      Testi kysymys4
    #Choosing type
    Click Element    xpath:/html/body/div/form/div/div[2]/select
    Sleep   1s
    Click Element    xpath:/html/body/div/form/div/div[2]/select/option[2]
    #Choosing requirement
    Click Element    xpath://*[@id="isRequired1"]
    Click Button    xpath:/html/body/div/form/input[2]
    Page Should Contain    Testi kysymys4

Add Checkbox No Required Question
    Wait Until Page Contains Element    xpath:/html/body/div/a
    Input Text    xpath://*[@id="content"]      Testi kysymys5
    #Choosing type
    Click Element    xpath:/html/body/div/form/div/div[2]/select
    Sleep   1s
    Click Element    xpath:/html/body/div/form/div/div[2]/select/option[3]
    #Choosing requirement
    Click Element    xpath://*[@id="isRequired2"]
    Click Button    xpath:/html/body/div/form/input[2]
    Page Should Contain    Testi kysymys5

Add Checkbox Yes Required Question
    Wait Until Page Contains Element    xpath:/html/body/div/a
    Input Text    xpath://*[@id="content"]      Testi kysymys6
    #Choosing type
    Click Element    xpath:/html/body/div/form/div/div[2]/select
    Sleep   1s
    Click Element    xpath:/html/body/div/form/div/div[2]/select/option[3]
    #Choosing requirement
    Click Element    xpath://*[@id="isRequired1"]
    Click Button    xpath:/html/body/div/form/input[2]
    Page Should Contain    Testi kysymys6

