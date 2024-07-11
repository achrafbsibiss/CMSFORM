require "test_helper"

class FormSteps::FieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_steps_field = form_steps_fields(:one)
  end

  test "should get index" do
    get form_steps_fields_url
    assert_response :success
  end

  test "should get new" do
    get new_form_steps_field_url
    assert_response :success
  end

  test "should create form_steps_field" do
    assert_difference("FormSteps::Field.count") do
      post form_steps_fields_url, params: { form_steps_field: { form_step_id: @form_steps_field.form_step_id, name: @form_steps_field.name, type: @form_steps_field.type } }
    end

    assert_redirected_to form_steps_field_url(FormSteps::Field.last)
  end

  test "should show form_steps_field" do
    get form_steps_field_url(@form_steps_field)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_steps_field_url(@form_steps_field)
    assert_response :success
  end

  test "should update form_steps_field" do
    patch form_steps_field_url(@form_steps_field), params: { form_steps_field: { form_step_id: @form_steps_field.form_step_id, name: @form_steps_field.name, type: @form_steps_field.type } }
    assert_redirected_to form_steps_field_url(@form_steps_field)
  end

  test "should destroy form_steps_field" do
    assert_difference("FormSteps::Field.count", -1) do
      delete form_steps_field_url(@form_steps_field)
    end

    assert_redirected_to form_steps_fields_url
  end
end
