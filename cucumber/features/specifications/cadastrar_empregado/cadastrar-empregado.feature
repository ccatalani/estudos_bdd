# language: pt
# encode: UTF-8
# Author: Lucas Fraga
# Date: 13/07/2017
# Version: 1.00

Funcionalidade: Cadastrar empregado
  Sendo um administrador do sistema OrangeHRM
  Posso realizar o cadastros no sistema
  Para que eu possa gerenciar meus empregados

Contexto:
  Dado que eu esteja na pagina do OrangeHRM
  Quando faco o login
  Entao login efetuado com sucesso

@premissa_cadastro
@premissa_login
@cadastrar
Cenario: Cadastro de empregado com sucesso
  Dado que eu navegue para cadastrar novo empregado
  Quando faco o cadastro desse empregado
  Entao cadastro realizado com sucesso
