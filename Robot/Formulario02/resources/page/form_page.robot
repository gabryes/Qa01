*** Settings ***
Resource    ../main.robot

*** Variables ***
&{home}
...    A_Signup=//a[@href="https://demoqa.com/automation-practice-form"]

&{formVar}
# Textarea practice
...    Input_firstName=//input[@id="firstName"]
...    Input_lastName=//input[@id="lastName"]
...    Input_userEmail=//input[@id="userEmail"]
...    Input_gender=//input[@id="gender-radio-1"]
...    Input_phone=//input[@id="userNumber"]



*** Keywords ***
Dado que eu acesse site tools
    Open Browser    ${geral.URL}    ${geral.Browser}   
    

Dado que eu preencha os campos
# Textarea practice
    Wait Until Element Is Visible  ${formVar.Input_firstName}        10
    Input Text                     ${formVar.Input_firstName}        Gabriel
    Wait Until Element Is Visible  ${formVar.Input_lastName}               10
    Input Text                     ${formVar.Input_lastName}               Vasconcelos
    Wait Until Element Is Visible  ${formVar.Input_userEmail}        10
    Input Text                     ${formVar.Input_userEmail}        gabriel@gabriel.com
    Wait Until Element Is Visible  gender                            10
    Select Radio Button            gender                            Male
    Wait Until Element Is Visible  ${formVar.Input_phone}            10
    Input Text                     ${formVar.Input_phone}            9999999999
    
#-------- parei aqui
    

    Wait Until Element Is Visible  ${formVar.Button_submit}     10
    Click Element                  ${formVar.Button_submit}  
# CheckBox & Radio Button practice
    
    Select Checkbox                ${formVar.Check_mondey}
    Select Checkbox                ${formVar.Check_tuesday}
    Select Checkbox                ${formVar.Check_wednesday}
    Unselect Checkbox              ${formVar.Check_wednesday}
# DropDown practice
    Select From List By Label      ${formVar.Drop_spain}    Spain
    Select From List By index      ${formVar.Drop_spain}    3
# CheckBox & Radio Button practice Xpath
    Wait Until Element Is Visible  ${formVar.Radio_year}    10
    #Select Radio Button            customRadio    1year


    
    
    


