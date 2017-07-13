# language: pt
# encode: UTF-8
# Author: Lucas Fraga
# Date: 13/07/2017
# Version: 1.00

Funcionalidade: Editar empregado
  Sendo um administrador do sistema OrangeHRM
  Posso realizar o cadastros no sistema
  Para que eu possa gerenciar meus empregados

Contexto:
  Dado que eu esteja na pagina do OrangeHRM
  E faco o login
  E que eu navegue para cadastrar novo empregado
  E faco o cadastro desse empregado

@pegar_id
@premissa_cadastro
@premissa_login
@editar_empregado
Cenario: Editar empregado com sucesso
    Dado que eu pegue o id do cadastro
    Quando editar o cadastro desse empregado
    Entao cadastro editado com sucesso
