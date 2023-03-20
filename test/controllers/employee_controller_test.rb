require "test_helper"

class EmployeeControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get employee_about_url
    assert_response :success
  end

  test "should get terms" do
    get employee_terms_url
    assert_response :success
  end

  test "should get home" do
    get employee_home_url
    assert_response :success
  end
end
