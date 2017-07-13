# language: pt
# encode: UTF-8
# Author: Lucas Fraga
# Date: 13/07/2017
# Version: 1.00

Funcionalidade: Acessar ORANGE
 Sendo um administrador do sistema OrangeHRM
 Posso realizar o cadastros no sistema
 Para que eu possa gerenciar meus empregados

@premissa_login
@login
Cenario: Acessar site Orange
  Dado que eu esteja na pagina do OrangeHRM
  Quando faco o login
  Entao login efetuado com sucesso
