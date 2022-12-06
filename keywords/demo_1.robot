*** Settings ***
Library  SeleniumLibrary
Resource    D:/robotframework/variables/var1.robot

*** Keywords ***
browser should be open
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5
    Page Should Contain    Login
    Log To Console    text is found
username entered
    Wait Until Page Contains Element    ${username}    5
    Click Element    ${username}
    Log To Console    username get clicked
    Input Text    ${username}    ${user_text}
password entered
    Wait Until Page Contains Element    ${password}    5
    Click Element    ${password}
    Log To Console    password get clicked
    Input Password    ${password}    ${pass_text}
clicked on login
    Wait Until Page Contains Element    ${login}    5
    Click Element    ${login}
    Log To Console    login get clicked

# time method
#     clicking on side menu    ${time_link}
#     Sleep    3

rec method
    clicking on side menu    ${rec_link}
    Sleep    3
    Click Element    ${job_dropdown}
    job title drop down
    sleep    10
#navigating through dropdown
    
job title drop down
    FOR  ${i}  IN RANGE    1    25
        Press Keys    none    ARROW_DOWN
        ${element_2} =    Run Keyword And Return Status    Element Should Be Visible    ${test}
        IF    ${element_2}
            Wait Until Element Is Visible    ${test}
            Press Keys    ${test}    ENTER
            Exit For Loop
        ELSE
            Log    continue
        END
    END
        

#clicking on side menu
clicking on side menu   
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}
    Click Element    ${element}