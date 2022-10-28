*** Settings ***
Resource    ../main.robot

*** Variables ***
&{home}
...    A_Signup=//a[@href="https://itera-qa.azurewebsites.net/home/automation"]

&{formVar}
# Textarea practice
...    Input_nome=//input[@id="name"]
...    Input_phone=//input[@id="phone"]
...    Input_email=//input[@id="email"]
...    Input_password=//input[@id="password"]
...    Textarea_address=//textarea[@id="address"]
...    Button_submit=//button[@name="submit"]
# CheckBox & Radio Button practice
#...    Radio_gender=//input[@name="optionsRadios"]
...    Check_mondey=//input[@id="monday"]
...    Check_tuesday=//input[@id="tuesday"]
...    Check_wednesday=//input[@id="wednesday"]
# DropDown practice
...    Drop_spain=//select[@class="custom-select"]
# CheckBox & Radio Button practice Xpath
...    Radio_year=//label[@class="custom-control-label"][@for="1year"]


*** Keywords ***
Dado que eu acesse site Itera
    Open Browser    ${geral.URL}    ${geral.Browser}   
    

Dado que eu preencha os campos
# Textarea practice
    Wait Until Element Is Visible  ${formVar.Input_nome}        10
    Input Text                     ${formVar.Input_nome}        Gabriel
    Wait Until Element Is Visible  ${formVar.Input_phone}       10
    Input Text                     ${formVar.Input_phone}       8695652134
    Wait Until Element Is Visible  ${formVar.Input_email}       10
    Input Text                     ${formVar.Input_email}       gabriel@gabriel.com
    Wait Until Element Is Visible  ${formVar.Input_password}    10
    Input Text                     ${formVar.Input_password}    sdfsfsdfsdfsdf5sfsd1
    Wait Until Element Is Visible  ${formVar.Textarea_address}  10
    Input Text                     ${formVar.Textarea_address}  tudo aqui do texto
    Wait Until Element Is Visible  ${formVar.Button_submit}     10
    Click Element                  ${formVar.Button_submit}  
# CheckBox & Radio Button practice
    Wait Until Element Is Visible  optionsRadios      10
    Select Radio Button            optionsRadios      option1
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


    
    
    


