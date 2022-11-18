require "test_helper"

class Api::V1::MedicalControllerTest < ActionDispatch::IntegrationTest
  test "should get medical_name:string" do
    get api_v1_medical_medical_name:string_url
    assert_response :success
  end

  test "should get medical_address:string" do
    get api_v1_medical_medical_address:string_url
    assert_response :success
  end

  test "should get email:string" do
    get api_v1_medical_email:string_url
    assert_response :success
  end
end
