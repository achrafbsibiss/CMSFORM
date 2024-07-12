module FormSteps::FieldsHelper
  def render_form_field(field)
    label = field.label
    input_type = field.input_type

    case input_type
    when 'text'
      text_field_tag(label.parameterize.underscore.to_sym, nil, class: 'form-input')
    when 'textarea'
      text_area_tag(label.parameterize.underscore.to_sym, nil, class: 'form-textarea')
    when 'checkbox'
      check_box_tag(label.parameterize.underscore.to_sym, nil, class: 'form-checkbox')
    when 'date'
      date_field_tag(label.parameterize.underscore.to_sym, nil, class: 'form-date')
    when 'number'
      number_field_tag(label.parameterize.underscore.to_sym, nil, class: 'form-number')
    else
      raise ArgumentError, "Unsupported input type: #{input_type}"
    end
  end
end
