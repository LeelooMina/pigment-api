module Api
  module V1
class PaintsController < ApplicationController
  before_action :set_paint, only: %i[ show update destroy ]
  skip_before_action :authenticate, only: %i[ index ]

  # GET /paints
  def index
    if params[:color_family_id]
      @paints = Paint.where(color_family_id: params[:color_family_id])
    elsif params[:name]
      @paints = Paint.where("name LIKE ?", "%#{params[:name]}%")
    else
      @paints = Paint.all.includes(:pigments)
    end
    render json: @paints.as_json(include: :pigments)
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
      params.require(:paint).permit(:brand, :name, :transparent, :lightfast, :staining, :granulating, :available)
    end
end
end
end
