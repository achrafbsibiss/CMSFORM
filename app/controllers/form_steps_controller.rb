class FormStepsController < ApplicationController
  before_action :set_template
  before_action :set_form_step, only: %i[show edit update destroy]

  # GET /form_steps or /form_steps.json
  def index
    @form_steps = FormStep.all
  end

  # GET /form_steps/1 or /form_steps/1.json
  def show; end

  # GET /form_steps/new
  def new
    @form_step = @template.form_step.build
  end

  # GET /form_steps/1/edit
  def edit; end

  # POST /form_steps or /form_steps.json
  def create
    @form_step = @template.form_step.build(form_step_params)

    respond_to do |format|
      if @form_step.save
        format.html { redirect_to template_form_steps_url(@template), notice: 'Form step was successfully created.' }
        format.json { render :show, status: :created, location: @form_step }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @form_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /form_steps/1 or /form_steps/1.json
  def update
    respond_to do |format|
      if @form_step.update(form_step_params)
        format.html { redirect_to template_form_steps_url(@template), notice: 'Form step was successfully updated.' }
        format.json { render :show, status: :ok, location: @form_step }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @form_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /form_steps/1 or /form_steps/1.json
  def destroy
    @form_step.destroy!

    respond_to do |format|
      format.html { redirect_to template_form_steps_url(@template), notice: 'Form step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_form_step
    @form_step = FormStep.find(params[:id])
  end

  def set_template
    @template = Template.find(params[:template_id])
  end

  # Only allow a list of trusted parameters through.
  def form_step_params
    params.require(:form_step).permit(:template_id, :name, :order)
  end
end
