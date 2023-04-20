module Api
  module V1
class PaintPigmentsController < ApplicationController
  before_action :set_paint_pigment, only: %i[ show update destroy ]

  # GET /paint_pigments
  def index
    @paint_pigments = PaintPigment.all

    render json: @paint_pigments
  end

  # GET /paint_pigments/1
  def show
    render json: @paint_pigment
  end

  # POST /paint_pigments
  def create
    @paint_pigment = PaintPigment.new(paint_pigment_params)

    if @paint_pigment.save
      render json: @paint_pigment, status: :created, location: @paint_pigment
    else
      render json: @paint_pigment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paint_pigments/1
  def update
    if @paint_pigment.update(paint_pigment_params)
      render json: @paint_pigment
    else
      render json: @paint_pigment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paint_pigments/1
  def destroy
    @paint_pigment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint_pigment
      @paint_pigment = PaintPigment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def paint_pigment_params
      params.require(:paint_pigment).permit(:paint_id, :pigment_id)
    end
end
end
end
