class FormSteps::FieldsController < ApplicationController
  before_action :set_template
  before_action :set_form_step
  before_action :set_field, only: %i[edit update destroy show]

  def index
    @fields = @form_step.fields
  end

  def new
    @field = @form_step.fields.build
  end

  def show; end

  def edit; end

  def create
    @field = @form_step.fields.build(field_params)

    if @field.save
      redirect_to template_form_step_fields_path(@template, @form_step)
    else
      render :new
    end
  end

  def update
    if @field.update(field_params)
      redirect_to template_form_step_fields_path(@template, @form_step)
    else
      render :edit
    end
  end

  def destroy
    @field.destroy
    redirect_to template_form_step_fields_path(@template, @form_step)
  end

  private

  def set_template
    @template = Template.find(params[:template_id])
  end

  def set_form_step
    @form_step = @template.form_step.find(params[:form_step_id])
  end

  def set_field
    @field = @form_step.fields.find(params[:id])
  end

  def field_params
    params.require(:field).permit(:name, :input_type)
  end
end
