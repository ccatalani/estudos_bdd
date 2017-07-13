
class AddEmployee < SitePrism::Page
  set_url "http://opensource.demo.orangehrmlive.com/index.php/pim/addEmployee"
  element :first_name,        "input[id='firstName']"
  element :last_name,         "input[id='lastName']"
  element :btn_save,          "input[id='btnSave']"
  element :id_employee,       "input[id='personal_txtEmployeeId']"
end
