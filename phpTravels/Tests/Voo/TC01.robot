*** Settings ***
Resource     ../../Steps/Main_Steps.robot


*** Test Cases ***
TC01 - Reservando passagem de destinos dentro dos EUA na classe econômica
    Dado que eu acesse o php travels
    E clique para fazer cadastro
    E realize o cadastro
    E clique para fazer o login 
    E faça o Login
    Quando eu realizo uma busca de um vôo ida e volta
    E saindo de Los Angeles EUA
    E indo para London
    #E saindo na data
    #E voltando na data
    #Quando eu clico em buscar
    #E seleciono o primeiro vôo
    #E preencho os dados do passageiro
    #E preencho os dados de pagamento
    #E clico em confirmar
    #Então a página de confirmação de viagem é exibida
    E fecho o navegador
