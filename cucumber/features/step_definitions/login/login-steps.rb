# encoding: utf-8

Dado(/^que eu esteja na pagina do OrangeHRM$/) do
  visit '/'
end

Quando(/^faco o login$/) do
  @login = AcessarORANGE.new
  @login.login_orange(@user, @pass)
end

Entao(/^login efetuado com sucesso$/) do
  @validacao_login = AcessarORANGE.new
  expect(page).to have_css("#welcome", :visible => true)
end
