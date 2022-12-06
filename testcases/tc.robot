*** Settings ***
Resource    D:/robotframework/keywords/demo_1.robot
Library    SeleniumLibrary

*** Test Cases ***
opening orangehrm in browser
    browser should be open
login details
    username entered
    password entered
    clicked on login
click on some menu
    
    rec method
    
    
    