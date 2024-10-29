*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource

*** Keywords ***
E faça o Login
    Wait Until Element Is Visible  ${Login.Input_EmailLogin}  10
    Input Text                     ${Login.Input_EmailLogin}  ${Email}
    Wait Until Element Is Visible  ${Login.Input_SenhaLogin}  10
    Input Text                     ${Login.Input_SenhaLogin}  ${Senha}
    Wait Until Element Is Visible  ${Login.Button_Logar}      10
    Click Element                  ${Login.Button_Logar} 

# E fecho o navegador
 #   Close Browser