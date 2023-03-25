class ColorFamiliesController < ApplicationController
  before_action :set_color_family, only: %i[ show update destroy ]

  # GET /color_families
  def index
    @color_families = ColorFamily.all

    render json: @color_families
  end

  # GET /color_families/1
  def show
    render json: @color_family
  end

  # POST /color_families
  def create
    @color_family = ColorFamily.new(color_family_params)

    if @color_family.save
      render json: @color_family, status: :created, location: @color_family
    else
      render json: @color_family.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /color_families/1
  def update
    if @color_family.update(color_family_params)
      render json: @color_family
    else
      render json: @color_family.errors, status: :unprocessable_entity
    end
  end

  # DELETE /color_families/1
  def destroy
    @color_family.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_family
      @color_family = ColorFamily.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def color_family_params
      params.require(:color_family).permit(:name, :swatch_url)
    end
end
