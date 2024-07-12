class TemplatesController < ApplicationController
  before_action :set_template, only: %i[edit update]

  def index
    @templates = Template.all
  end

  def edit; end

  def new
    @template = Template.new
  end

  def create
    @template = Template.new(template_params)

    if @template.save
      redirect_to templates_path
    else
      render :new
    end
  end

  def update
    if @template.update(template_params)
      redirect_to templates_path
    else
      render :edit
    end
  end

  private

  def set_template
    @template = Template.find(params[:id])
  end

  def template_params
    params.require(:template).permit(:name)
  end
end
