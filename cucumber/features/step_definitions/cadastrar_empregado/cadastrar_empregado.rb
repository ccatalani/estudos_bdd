# encoding: utf-8

Dado(/^que eu navegue para cadastrar novo empregado$/) do
  @navegar_cadastro_empregado = AddEmployee.new
  @navegar_cadastro_empregado.load
end

Quando(/^faco o cadastro desse empregado$/) do
  @castrar_empregado = CadastrarEmpregado.new
  @castrar_empregado.cadastrar_empregado(@first_name, @last_name)
end

Entao(/^cadastro realizado com sucesso$/) do
  expect(page).to have_css("div[id='profile-pic'] h1", :text => @firstName)
end
