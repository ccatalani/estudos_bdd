# encoding: utf-8
# !/usr/bin/env ruby

require 'rspec/expectations'
require 'faker'

class EditarCadastro
  include Capybara::DSL
  include RSpec::Matchers

  def pegar_id(numero_id)
    @editar_cadastro_data = EditEmployee.new
    expect(page).to have_css("#personal_txtEmployeeId", :visible => true)
    $numero_id = @editar_cadastro_data.employeed_id_pegar.value
  end

  def editar_cadastro(numero_id)
    @editar_cadastro_data = EditEmployee.new
    @editar_cadastro_data.employeed_id_search.set($numero_id)
    @editar_cadastro_data.btn_search.click
    click_link($numero_id)
    @editar_cadastro_data.btn_edit.click
    find('#personal_txtEmpFirstName').set ''
    @editar_cadastro_data.first_name_edit.set("Passed")
    @editar_cadastro_data.btn_save_edit.click
  end
end
