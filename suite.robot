*** Settings ***
Resource            resource.robot
Test Setup          Dado que usuário abre o site
Test Teardown       E fecha o navegador





*** Test Cases ***
Cenário 01: Cadastrando novo usuário Web Tables    
    E maximiza a tela
    Quando clica no botão Add
    E preenche os dados
    Então clica no botão submit
    E verifica se consta o nome cadastrado
    
Cenário 02: Alterando o cadastro de um usuário  
    E maximiza a tela
    Quando clica em edit no primeiro nome
    E edita os dados
    Então clica no botão submit
    E verifica se consta o novo nome cadastrado

Cenário 03: Cadastrar usuário sem preencher o primeiro nome
    E maximiza a tela
    Quando clica no botão Add
    E preenche os outros campos sem preencher o first name
    Então clica no botão submit

Cenário 04: Cadastrar usuário sem preencher o sobrenome
    E maximiza a tela
    Quando clica no botão Add
    E preenche os outros campos sem preencher o sobrenome
    Então clica no botão submit

Cenário 05: Cadastrar usuário sem preencher o email
    E maximiza a tela
    Quando clica no botão Add
    E preenche os outros campos sem preencher o email
    Então clica no botão submit

Cenário 06: Cadastrar usuário sem preencher a idade
    E maximiza a tela
    Quando clica no botão Add
    E preenche os outros campos sem preencher a idade
    Então clica no botão submit

Cenário 07: Cadastrar usuário preenchendo a idade com letras
    E maximiza a tela
    Quando clica no botão Add
    E preenche o campo idade com letras
    Então clica no botão submit

Cenário 08: Cadastrar usuário sem preencher o salário
    E maximiza a tela
    Quando clica no botão Add
    E preenche os outros campos sem preencher o salário
    Então clica no botão submit

Cenário 09: Cadastrar usuário preenchendo salário com letras
    E maximiza a tela
    Quando clica no botão Add
    E preenche o campo salário com letras
    Então clica no botão submit

Cenário 10: Cadastrar usuário sem preencher o department
    E maximiza a tela
    Quando clica no botão Add
    E preenche os outros campos sem preencher o department
    Então clica no botão submit