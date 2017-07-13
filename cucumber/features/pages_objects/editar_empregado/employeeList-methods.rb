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
    @editar_cadastro_data.click_link($umero_id)
    @editar_cadastro_data.click_link.btn_edit.click
    find('#personal_txtEmployeeId').set ''
    @editar_empregado_data.click_link.first_name_edit.set("Passed")
    @editar_empregado_data.click_link.btn_save_edit.click
  end

  # def pegar_id(numero_id)
  #   @pegar_numero_id = AddEmployee.new
  #   expect(page).to have_css("#personal_txtEmployeeId", :visible => true)
  #   @pegar_numero_id.id_employee.value
  # end
end
