*** Settings ***

Resource                 ../steps/Metodos_steps.robot


*** Variables ***


${Url}                    https://demo.automationtesting.in/Register.html
${Site}                   //h2[contains(.,'Register')]
${Campo_Nome}             //input[contains(@placeholder,'First Name')]
${Name_Meio}              //input[contains(@placeholder,'Last Name')]
${First_Name}             Edson
${Last_Name}              Alaor
${Dress}                  //textarea[contains(@rows,'3')]
${Endereço}               Rua Pedro André Numero 20
${Email}                  //input[@type='email']
${Phone}                  //input[@ng-model='Phone']
${Telefone}               11 947163471
${Male}                   //input[@value='Male']
${Female}                 //input[@value='FeMale']
${Hobie}                  //label[contains(.,'Hobbies')]
${Escolha}                //input[@value='Movies']
${Campo_Language}        //div[@class='ui-autocomplete-multiselect ui-state-default ui-widget']
${Danish}                 //a[contains(.,'Danish')]
${Catalan}                //a[contains(.,'Catalan')]
${Campo_Pais}             //span[contains(@aria-haspopup,'true')]
${Pais_India}             Dinamarca
${Pais_EUA}               //li[contains(.,'United States of America')]
${Select}                 //option[@value='Art Design'][contains(.,'Art Design')]
${Fotoshop}               //option[@value='Adobe Photoshop']
${Campo_Skill}            //select[contains(@ng-model,'Skill')]
${Titulo_Language}        //label[contains(.,'Languages')]
${Texto_Skill}            //label[contains(.,'Skills')]
${Name}                   edson.alaor@Yahoo.com.br
${Campo_Ano}              //select[@placeholder='Year']
${Date}                   //option[contains(@value,'1957')]
${Campo_Mes}              //select[@placeholder='Month']
${Mes}                    //option[@value='April']
${Dia}                    //option[@value='21']
${Campo_Dia}              //select[contains(@placeholder,'Day')]
${Campo_Senha}            //input[contains(@id,'firstpassword')]
${Password}               Caicara 1313
${Confirmar}             //input[contains(@id,'secondpassword')]





*** Keywords ***

Abrir Navegador
    Open Browser                browser=chrome
    Maximize Browser Window
    Capture Page Screenshot

Fechar Navegador
    Capture Page Screenshot
    Close Browser 

Acessar Home Page
    Go to     ${Url}
    Sleep                              1

Verificar se aparece a Frase Register  
    Sleep                              1
    Wait Until Element Is Visible      ${Site}
    Capture Page Screenshot

Preencher First Nome
    Sleep                              1
    Wait Until Element Is Visible      ${Campo_Nome}
    Capture Page Screenshot
    Input Text                         ${Campo_Nome}       ${First_Name}
    Capture Page Screenshot

Preenche Last Nome
    Sleep                              1
    Wait Until Element Is Visible      ${Name_Meio}
    Capture Page Screenshot
    Input Text                         ${Name_Meio}         ${Last_Name}
    Capture Page Screenshot

Preencher Endereço
    Wait Until Element Is Visible     ${Dress}
    Capture Page Screenshot
    Input Text                        ${Dress}              ${Endereço}
    Capture Page Screenshot

Endereço de e-mail 
    Sleep                              3
    Wait Until Element Is Visible     ${Email} 
    Input Text                        ${Email}          ${Name}
    Capture Page Screenshot

Preencher Telefone
    Wait Until Element Is Visible      ${Phone}
    Capture Page Screenshot
    Input Text                         ${Phone}        ${Telefone} 
    Capture Page Screenshot 

Selecione Genero "${Gender}"
    Capture Page Screenshot
    Escolha o Genero    ${Gender}
  

Selecione Hobbies
    Wait Until Element Is Visible    ${Hobie}
    Capture Page Screenshot
    Click Button                     ${Escolha}

Selecione Linguagem "${Languages}"
    Capture Page Screenshot
    Click Element       ${Campo_Language}
    Escolha Linguagem   ${Languages}
    Capture Page Screenshot
    Click Element       ${Titulo_Language}

Selecione Habilidades "${Skill}"
    Capture Page Screenshot
    Click Element      ${Campo_Skill} 
    Escolha Habilidades    ${Skill} 
    Capture Page Screenshot   
    Click Element         ${Select}

Selecione Pais 
    Wait Until Element Is Visible     ${Campo_Pais}
    Capture Page Screenshot   
    Click Element                     ${Campo_Pais}  
    Capture Page Screenshot   
    Click Element                     ${Pais_EUA}
    Capture Page Screenshot   
    Sleep                           2

Selecionar Ano 
    Wait Until Element Is Visible     ${Campo_Ano}
    Capture Page Screenshot
    Click Element                     ${Campo_Ano} 
    Capture Page Screenshot
     Wait Until Element Is Visible    ${Date}
    Click Element                     ${Date}
    Capture Page Screenshot 
    Wait Until Element Is Visible     ${Campo_Mes}
    Click Element                     ${Campo_Mes}
    Wait Until Element Is Visible     ${Mes}
    Click Element                     ${Mes}
    Capture Page Screenshot 
    Wait Until Element Is Visible     ${Campo_Dia}
    Click Element                     ${Campo_Dia}
    Capture Page Screenshot 
    Wait Until Element Is Visible     ${Dia}
    Click Element                     ${Dia}
    Capture Page Screenshot
    Sleep                             2

Senha
    Wait Until Element Is Visible    ${Campo_Senha}
    Capture Page Screenshot
    Input Text                       ${Campo_Senha}          ${Password}
    Capture Page Screenshot
    Wait Until Element Is Visible    ${Confirmar}
    Input Text                       ${Confirmar}            ${Password}
    Capture Page Screenshot
    Sleep                            2
