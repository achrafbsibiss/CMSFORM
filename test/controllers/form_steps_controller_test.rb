require "test_helper"

class FormStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @form_step = form_steps(:one)
  end

  test "should get index" do
    get form_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_form_step_url
    assert_response :success
  end

  test "should create form_step" do
    assert_difference("FormStep.count") do
      post form_steps_url, params: { form_step: { name: @form_step.name, order: @form_step.order, template_id: @form_step.template_id } }
    end

    assert_redirected_to form_step_url(FormStep.last)
  end

  test "should show form_step" do
    get form_step_url(@form_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_form_step_url(@form_step)
    assert_response :success
  end

  test "should update form_step" do
    patch form_step_url(@form_step), params: { form_step: { name: @form_step.name, order: @form_step.order, template_id: @form_step.template_id } }
    assert_redirected_to form_step_url(@form_step)
  end

  test "should destroy form_step" do
    assert_difference("FormStep.count", -1) do
      delete form_step_url(@form_step)
    end

    assert_redirected_to form_steps_url
  end
end
