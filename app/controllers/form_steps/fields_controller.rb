class FormSteps::FieldsController < ApplicationController
  before_action :set_form_steps_field, only: %i[ show edit update destroy ]

  # GET /form_steps/fields or /form_steps/fields.json
  def index
    @form_steps_fields = FormSteps::Field.all
  end

  # GET /form_steps/fields/1 or /form_steps/fields/1.json
  def show
  end

  # GET /form_steps/fields/new
  def new
    @form_steps_field = FormSteps::Field.new
  end

  # GET /form_steps/fields/1/edit
  def edit
  end

  # POST /form_steps/fields or /form_steps/fields.json
  def create
    @form_steps_field = FormSteps::Field.new(form_steps_field_params)

    respond_to do |format|
      if @form_steps_field.save
        format.html { redirect_to form_steps_field_url(@form_steps_field), notice: "Field was successfully created." }
        format.json { render :show, status: :created, location: @form_steps_field }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @form_steps_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_steps/fields/1 or /form_steps/fields/1.json
  def update
    respond_to do |format|
      if @form_steps_field.update(form_steps_field_params)
        format.html { redirect_to form_steps_field_url(@form_steps_field), notice: "Field was successfully updated." }
        format.json { render :show, status: :ok, location: @form_steps_field }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @form_steps_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_steps/fields/1 or /form_steps/fields/1.json
  def destroy
    @form_steps_field.destroy!

    respond_to do |format|
      format.html { redirect_to form_steps_fields_url, notice: "Field was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_form_steps_field
      @form_steps_field = FormSteps::Field.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def form_steps_field_params
      params.require(:form_steps_field).permit(:form_step_id, :name, :type)
    end
end
