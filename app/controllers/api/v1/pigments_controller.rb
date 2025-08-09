module Api
  module V1
class PigmentsController < Api::V1::ApplicationController
  before_action :set_pigment, only: %i[ show update destroy ]

  skip_before_action :authenticate, only: %i[index show]

  # GET /pigments
  def index
    if params[:color_family_id]
      @pigments = Pigment.by_color_family(params[:color_family_id])
    elsif params[:color_temperature]
      @pigments = Pigment.where(color_temperature: params[:color_temperature])
    else
      @pigments = Pigment.all.includes(:paints, :color_families)
    end

    render json: @pigments.as_json(
      include: { 
        paints: { only: [:id, :name, :transparent, :lightfast] },
        color_families: { only: [:id, :name, :swatch_url] }
      }
    )
  end

  # GET /pigments/1
  def show
    render json: @pigment
  end

  # POST /pigments
  def create
    @pigment = Pigment.new(pigment_params)

    if @pigment.save
      render json: @pigment, status: :created, location: @pigment
    else
      render json: @pigment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pigments/1
  def update
    if @pigment.update(pigment_params)
      render json: @pigment
    else
      render json: @pigment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pigments/1
  def destroy
    @pigment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pigment
      @pigment = Pigment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pigment_params
      params.require(:pigment).permit(:name, :description, :available, :toxicity_level, :mixing_behavior, 
                                     :recommended_for, :avoid_mixing_with, :color_temperature, :opacity, 
                                     :granulation, :lightfastness, :staining_power, :common_names)
    end
end
end
end
