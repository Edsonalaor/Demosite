*** Settings ***

Documentation          Esse Teste Preenche Registro  de Pessas no site  https://demo.automationtesting.in/Register.html
 # Comando para rodar a suite de teste: robot -d .\Results   Teste\Demoautomation_test.robot

Library                   SeleniumLibrary
Library                   String

Resource             ../steps/Demoautomation_steps.robot
Resource             ../steps/Metodos_steps.robot

Test Setup             Abrir Navegador
# Test Teardown          Fechar Navegador

   
*** Test Cases ***

CT01-Preencher dados

   [Documentation]       Esse teste realiza o Preenchimento de  Dados no Registro no site Demo

   [Tags]                Registro


   Acessar Home Page
   Verificar se aparece a Frase Register  
   Preencher First Nome
   Preenche Last Nome
   Preencher Endereço
   Endereço de e-mail   
   Preencher Telefone
   Selecione Genero "Male"
   Selecione Hobbies
   Selecione Linguagem "Danish"
   Selecione Habilidades "Select"
   Selecione Pais 
   Selecionar Ano 
   Senha
