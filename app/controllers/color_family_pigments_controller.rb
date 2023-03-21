class ColorFamilyPigmentsController < ApplicationController
  before_action :set_color_family_pigment, only: %i[ show update destroy ]

  # GET /color_family_pigments
  def index
    @color_family_pigments = ColorFamilyPigment.all

    render json: @color_family_pigments
  end

  # GET /color_family_pigments/1
  def show
    render json: @color_family_pigment
  end

  # POST /color_family_pigments
  def create
    @color_family_pigment = ColorFamilyPigment.new(color_family_pigment_params)

    if @color_family_pigment.save
      render json: @color_family_pigment, status: :created, location: @color_family_pigment
    else
      render json: @color_family_pigment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /color_family_pigments/1
  def update
    if @color_family_pigment.update(color_family_pigment_params)
      render json: @color_family_pigment
    else
      render json: @color_family_pigment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /color_family_pigments/1
  def destroy
    @color_family_pigment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_family_pigment
      @color_family_pigment = ColorFamilyPigment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def color_family_pigment_params
      params.require(:color_family_pigment).permit(:colorfamily_id, :pigment_id)
    end
end
