module Api
  module V1
class PaintsController < ApplicationController
  before_action :set_paint, only: %i[ show update destroy ]
  skip_before_action :authenticate, only: %i[ index ]

  # GET /paints
  def index
    if params[:color_family_id]
      @paints = Paint.where(color_family_id: params[:color_family_id])
    elsif params[:brand_id]
      @paints = Paint.where(brand_id: params[:brand_id])
    elsif params[:name]
      @paints = Paint.where("name ILIKE ?", "%#{params[:name]}%")
    else
      @paints = Paint.all.includes(:pigments, :brand, :color_family)
    end
    render json: @paints.as_json(
      include: { 
        pigments: { only: [:id, :name, :description, :color_temperature, :mixing_behavior] },
        brand: { only: [:id, :name, :country] },
        color_family: { only: [:id, :name, :swatch_url] }
      }
    )
  end
  

  # GET /paints/1
  def show
    render json: @paint
  end

  # POST /paints
  def create
    @paint = Paint.new(paint_params)

    if @paint.save
      render json: @paint, status: :created, location: @paint
    else
      render json: @paint.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paints/1
  def update
    if @paint.update(paint_params)
      render json: @paint
    else
      render json: @paint.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paints/1
  def destroy
    @paint.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint
      @paint = Paint.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paint_params
      params.require(:paint).permit(:brand_id, :name, :transparent, :lightfast, :staining, :granulating, :available, :color_family_id, :pigment)
    end
end
end
end
