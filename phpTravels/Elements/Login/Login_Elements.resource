*** Variables ***
&{Login}
#Login
...    Input_EmailLogin=//input[@name="Email"]
...    Input_SenhaLogin=//input[@name="Password"]
...    Button_Logar=//span[contains(text(),"Login")]
...    A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]    