*** Settings ***
Library         SeleniumLibrary


*** Variables ***
${Browser}          chrome
${url}              https://demoqa.com/webtables
${botao_add}        addNewRecordButton
${first_name}       //*[@id="firstName"]
${EMPTY}                       
${last_name}        //*[@id="lastName"]             
${email}            //*[@id="userEmail"]           
${age}              //*[@id="age"]                  
${salary}           //*[@id="salary"]               
${department}       //*[@id="department"]    
${botao_submit}     //*[@id="submit"]      
${imagemQA}         //*[@id="app"]/header/a/img
${botao_edit}       class=mr-2
${RF}               Registration Form 


*** Keywords ***
Dado que usuário abre o site
    Open Browser            ${url}        ${Browser}
    Title Should Be         ToolsQA
E maximiza a tela
    Maximize Browser Window
Quando clica no botão Add
    Click Element                       ${botao_add}
E preenche os dados
    Input Text                          ${first_name}           Jaime
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  80  
    Input Text                          ${salary}               12000
    Input Text                          ${department}           TI
Então clica no botão submit
    Click Element                       ${botao_submit}
    Wait Until Element Is Visible       ${imagemQA}     
      
E verifica se consta o nome cadastrado
    Page Should Contain        Jaime  
E fecha o navegador
    Close Browser

#Cenário 02 - reaproveitando as keywords
Quando clica em edit no primeiro nome    
    Wait Until Element Is Visible       ${botao_edit}                           
    Click Element                       ${botao_edit} 
    Page Should Contain                 ${RF}
E edita os dados       
    Input Text                          ${first_name}           Klebinho
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  50  
    Input Text                          ${salary}               10000
    Input Text                          ${department}           Administration 
#estou reaproveitando a keyword para clicar no botão submit
E verifica se consta o novo nome cadastrado
    Page Should Contain                 Klebinho 

# Cenário 03 - reaproveitando as keywords
E preenche os outros campos sem preencher o first name   
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  50  
    Input Text                          ${salary}               10000
    Input Text                          ${department}           Administration 
    Textfield Should Contain            ${first_name}           ${EMPTY}
    Page Should Contain                 ${RF}

#Cenário 04 - reaproveitando as keywords
E preenche os outros campos sem preencher o sobrenome
    Input Text                          ${first_name}           Jaime
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  50  
    Input Text                          ${salary}               10000
    Input Text                          ${department}           Administration 
    Textfield Should Contain            ${last_name}            ${EMPTY}
    Page Should Contain                 ${RF}                                               
    
#Cenário 05 - reaproveitando as keywords
E preenche os outros campos sem preencher o email
    Input Text                          ${first_name}           Jaime
    Input Text                          ${last_name}            Junior
    Input Text                          ${age}                  80  
    Input Text                          ${salary}               12000
    Input Text                          ${department}           TI
    Textfield Should Contain            ${email}                ${EMPTY}
    Page Should Contain                 ${RF}                              

#Cenário 06 - reaproveitando as keywords
E preenche os outros campos sem preencher a idade
    Input Text                          ${first_name}           Jaime
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com
    Input Text                          ${salary}               12000
    Input Text                          ${department}           TI
    Textfield Should Contain            ${age}                  ${EMPTY}
    Page Should Contain                 ${RF}    

#Cenário 07 - reaproveitando as keywords
E preenche o campo idade com letras
    Input Text                          ${first_name}           Jaime
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  AB 
    Input Text                          ${salary}               12000
    Input Text                          ${department}           TI    
    Textfield Should Contain            ${age}                  AB    
    Page Should Contain                 ${RF}                    

#Cenário 08 - reaproveitando as keywords
E preenche os outros campos sem preencher o salário
    Input Text                          ${first_name}           Jaime
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  80  
    Input Text                          ${department}           TI
    Textfield Should Contain             ${salary}               ${EMPTY}
    Page Should Contain                 ${RF}

#Cenário 09 - reaproveitando as keywords
E preenche o campo salário com letras
    Input Text                          ${first_name}           Jaime
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  80 
    Input Text                          ${salary}               AB
    Input Text                          ${department}           TI    
    Textfield Should Contain            ${salary}               AB    
    Page Should Contain                 ${RF} 

#Cenário 10 - reaproveitando as keywords
E preenche os outros campos sem preencher o department
    Input Text                          ${first_name}           Jaime
    Input Text                          ${last_name}            Junior
    Input Text                          ${email}                fuialiejavolto@gmail.com          
    Input Text                          ${age}                  80  
    Input Text                          ${salary}               12000
    Textfield Should Contain            ${department}           ${EMPTY}
    Page Should Contain                 ${RF}