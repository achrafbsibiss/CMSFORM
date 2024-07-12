require "test_helper"

class FormSteps::FieldsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get form_steps_fields_index_url
    assert_response :success
  end

  test "should get new" do
    get form_steps_fields_new_url
    assert_response :success
  end

  test "should get create" do
    get form_steps_fields_create_url
    assert_response :success
  end

  test "should get edit" do
    get form_steps_fields_edit_url
    assert_response :success
  end

  test "should get update" do
    get form_steps_fields_update_url
    assert_response :success
  end

  test "should get destroy" do
    get form_steps_fields_destroy_url
    assert_response :success
  end
end
