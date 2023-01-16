***Settings***
Resource                 ../Teste/Demoautomation_test.robot

***Keywords***

Escolha o Genero
    [Arguments]      ${Gender}

    IF        '${Gender}'== 'Male' 
        Click Element    ${Male}
    ELSE IF    '${Gender}' == 'Female'
        Click Element    ${Female}
    END       


Escolha Linguagem 
    [Arguments]       ${Languages}

    IF               '${Languages}' == 'Danish'
        Click Element        ${Danish}
    ELSE IF           '${Languages}' == 'Catalan'
        Click Element          ${Catalan}        
    END


Escolha Habilidades
    [Arguments]         ${Skill}

    IF                 '${Skill}' == 'Select'
        Click Element   ${Select} 
    ELSE IF            '${Skill}' == 'Fotoshop'
        Click Element   ${Fotoshop}
    END
    

Escolha Pais
    [Arguments]          ${Country}

    IF                  '${Country}' == 'India'
        Click Element    ${Pais_India} 

    ELSE IF             '${Country}' == 'United States of America'
        Click Element    ${Pais_EUA}
         
    END

# Escolha Ano
#     [Arguments]           {Birth}

#     IF                   '${Birth}' == '1930'
#         Click Element     ${Data}
        
#     END
    
     