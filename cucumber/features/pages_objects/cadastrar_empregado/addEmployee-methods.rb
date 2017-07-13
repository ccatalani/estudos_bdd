# encoding: utf-8
# !/usr/bin/env ruby

require 'rspec/expectations'
require 'faker'

class CadastrarEmpregado
  include Capybara::DSL
  include RSpec::Matchers

  def cadastrar_empregado(firstname, lastname)
    @cadastrar_empregado_data = AddEmployee.new
    @cadastrar_empregado_data.first_name.set(firstname)
    @cadastrar_empregado_data.last_name.set(lastname)
    @cadastrar_empregado_data.btn_save.click
  end

  # def pegar_id
  #   @numero_id = AddEmployee.new
  #   @numero_id = employeed_id.value
  #   # arq = File.new("codigo_cadastro.txt", "w+")
  #   # arq.puts @numero_id
  #   # arq.close
  # end
end
