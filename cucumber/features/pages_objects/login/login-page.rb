
class Login < SitePrism::Page
  element :user,          "input[id='txtUsername']"
  element :pass,          "input[id='txtPassword']"
  element :btn_login,     "input[id='btnLogin']"
end
