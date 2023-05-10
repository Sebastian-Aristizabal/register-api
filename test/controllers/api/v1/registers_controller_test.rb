require "test_helper"

class Api::V1::RegistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_register = api_v1_registers(:one)
  end

  test "should get index" do
    get api_v1_registers_url, as: :json
    assert_response :success
  end

  test "should create api_v1_register" do
    assert_difference("Api::V1::Register.count") do
      post api_v1_registers_url, params: { api_v1_register: { address: @api_v1_register.address, apartment: @api_v1_register.apartment, birth_date: @api_v1_register.birth_date, city: @api_v1_register.city, country: @api_v1_register.country, department: @api_v1_register.department, description: @api_v1_register.description, email: @api_v1_register.email, first_name: @api_v1_register.first_name, last_name: @api_v1_register.last_name, sex: @api_v1_register.sex } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_register" do
    get api_v1_register_url(@api_v1_register), as: :json
    assert_response :success
  end

  test "should update api_v1_register" do
    patch api_v1_register_url(@api_v1_register), params: { api_v1_register: { address: @api_v1_register.address, apartment: @api_v1_register.apartment, birth_date: @api_v1_register.birth_date, city: @api_v1_register.city, country: @api_v1_register.country, department: @api_v1_register.department, description: @api_v1_register.description, email: @api_v1_register.email, first_name: @api_v1_register.first_name, last_name: @api_v1_register.last_name, sex: @api_v1_register.sex } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_register" do
    assert_difference("Api::V1::Register.count", -1) do
      delete api_v1_register_url(@api_v1_register), as: :json
    end

    assert_response :no_content
  end
end
