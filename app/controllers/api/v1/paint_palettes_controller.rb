class PaintPalettesController < ApplicationController
  before_action :set_paint_palette, only: %i[ show update destroy ]

  # GET /paint_palettes
  def index
    @paint_ids = @palette.paints.pluck(:id)
    render json: @paint_ids

    # @paint_palettes = PaintPalette.all

    # render json: @paint_palettes
  end

  # GET /paint_palettes/1
  def show
    render json: @paint_palette
  end

  # POST /paint_palettes
  def create
    @paint_palette = PaintPalette.new(paint_palette_params)

    if @paint_palette.save
      render json: @paint_palette, status: :created, location: @paint_palette
    else
      render json: @paint_palette.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /paint_palettes/1
  def update
    if @paint_palette.update(paint_palette_params)
      render json: @paint_palette
    else
      render json: @paint_palette.errors, status: :unprocessable_entity
    end
  end

  # DELETE /paint_palettes/1
  def destroy
    @paint_palette.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint_palette
      @paint_palette = PaintPalette.find(params[:id])
    end

    def set_palette
      @palette = Palette.find(params[:palette_id])
    end

    

    # Only allow a list of trusted parameters through.
    def paint_palette_params
      params.require(:paint_palette).permit(:paint_id, :palette_id)
    end
end
