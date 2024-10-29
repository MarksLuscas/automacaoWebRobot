*** Settings ***
Resource    ../../Resource/Settings.resource
Resource    ../../Elements/Main_Elements.resource


*** Keywords ***
E clique para fazer cadastro
    Wait Until Element Is Visible      ${Home.A_Account}      10
    Click Element                      ${Home.A_Account} 
    Wait Until Element Is Visible  ${Home.A_OpcaoRegistro}      10
    Click Element                  ${Home.A_OpcaoRegistro} 


E clique para fazer o login
    Wait Until Element Is Visible      ${Home.A_Account}      10
    Click Element                      ${Home.A_Account} 
    Wait Until Element Is Visible  ${Home.A_OpcaoLogin}      10
    Click Element                  ${Home.A_OpcaoLogin} 


Quando eu realizo uma busca de um vôo ida e volta
    Wait Until Element Is Visible  ${Home.a_voos}           10
    Click Element                  ${Home.a_voos}
    Wait Until Element Is Visible  ${Home.Input_IdaeVolta}  10
    Click Element                  ${Home.Input_IdaeVolta}


E saindo de ${Texto}
   # Wait Until Element Is Visible  ${Home.Input_Ida}  10
    Click Element                  ${Home.Btn_Ida}
    Input Text                     ${Home.Input_Ida}  ${Texto}
    Press Keys                     ${Home.Input_Ida}  ARROW_DOWN
    Press Keys                     ${Home.Input_Ida}  ENTER 


E indo para ${Texto}
    Wait Until Element Is Visible  ${Home.Input_Volta}  10
    Input Text                     ${Home.Input_Volta}  ${Texto}
    Press Keys                     ${Home.Input_Volta}  ARROW_DOWN
    Press Keys                     ${Home.Input_Volta}  ENTER 