# encoding: utf-8

Dado(/^que eu pegue o id do cadastro$/) do
  @editar_cadastro = EditarCadastro.new
  @editar_cadastro.pegar_id($numero_id)
end

Quando(/^editar o cadastro desse empregado$/) do
  @navegar_editar_cadastro = EditEmployee.new
  @navegar_editar_cadastro.load

  @editar_cadastro = EditarCadastro.new
  @editar_cadastro.editar_cadastro($numero_id)
end

Entao(/^cadastro editado com sucesso$/) do
  expect(page).to have_css("div[id='profile-pic'] h1", :text => "Passed")
end
