require "application_system_test_case"

class FormSteps::FieldsTest < ApplicationSystemTestCase
  setup do
    @form_steps_field = form_steps_fields(:one)
  end

  test "visiting the index" do
    visit form_steps_fields_url
    assert_selector "h1", text: "Fields"
  end

  test "should create field" do
    visit form_steps_fields_url
    click_on "New field"

    fill_in "Form step", with: @form_steps_field.form_step_id
    fill_in "Name", with: @form_steps_field.name
    fill_in "Type", with: @form_steps_field.type
    click_on "Create Field"

    assert_text "Field was successfully created"
    click_on "Back"
  end

  test "should update Field" do
    visit form_steps_field_url(@form_steps_field)
    click_on "Edit this field", match: :first

    fill_in "Form step", with: @form_steps_field.form_step_id
    fill_in "Name", with: @form_steps_field.name
    fill_in "Type", with: @form_steps_field.type
    click_on "Update Field"

    assert_text "Field was successfully updated"
    click_on "Back"
  end

  test "should destroy Field" do
    visit form_steps_field_url(@form_steps_field)
    click_on "Destroy this field", match: :first

    assert_text "Field was successfully destroyed"
  end
end
