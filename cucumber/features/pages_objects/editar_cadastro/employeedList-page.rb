
class EditEmployee < SitePrism::Page
    set_url "http://opensource.demo.orangehrmlive.com/index.php/pim/viewEmployeeList"
    element :employeed_name,          "input[id='empsearch_employee_name_empName']"
    element :btn_search,              "input[id='searchBtn']"
    element :btn_edit,                "input[id='btnSave']"
    element :first_name_edit,         "input[id='personal_txtEmpFirstName']"
    element :btn_save_edit,           "input[id='btnSave']"
    element :employeed_id_search,     "input[id='empsearch_id']"
    element :employeed_id_pegar,      "input[id='personal_txtEmployeeId']"
end
