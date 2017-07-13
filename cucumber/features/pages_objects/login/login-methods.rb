# encoding: utf-8
# !/usr/bin/env ruby

require 'rspec/expectations'
require 'faker'

class AcessarORANGE
  include Capybara::DSL
  include RSpec::Matchers

  def login_orange(user, pass)
    @login_data = Login.new
    @login_data.user.set(user)
    @login_data.pass.set(pass)
    @login_data.btn_login.click
  end
end
