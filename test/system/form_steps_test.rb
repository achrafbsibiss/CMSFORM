require "application_system_test_case"

class FormStepsTest < ApplicationSystemTestCase
  setup do
    @form_step = form_steps(:one)
  end

  test "visiting the index" do
    visit form_steps_url
    assert_selector "h1", text: "Form steps"
  end

  test "should create form step" do
    visit form_steps_url
    click_on "New form step"

    fill_in "Name", with: @form_step.name
    fill_in "Order", with: @form_step.order
    fill_in "Template", with: @form_step.template_id
    click_on "Create Form step"

    assert_text "Form step was successfully created"
    click_on "Back"
  end

  test "should update Form step" do
    visit form_step_url(@form_step)
    click_on "Edit this form step", match: :first

    fill_in "Name", with: @form_step.name
    fill_in "Order", with: @form_step.order
    fill_in "Template", with: @form_step.template_id
    click_on "Update Form step"

    assert_text "Form step was successfully updated"
    click_on "Back"
  end

  test "should destroy Form step" do
    visit form_step_url(@form_step)
    click_on "Destroy this form step", match: :first

    assert_text "Form step was successfully destroyed"
  end
end
