
module Api
  module V1
class PaintPalettesController < Api::V1::ApplicationController
 

  # GET /paint_palettes
  def index
    @paints = PaintPalette.where(palette_id: params[:palette_id])
    render json: @paints
  end
  
  

  # GET /paint_palettes/1
  def show
    render json: @paint_palette
  end

  # POST /paint_palettes
  def create
    @paint_palette = PaintPalette.new(paint_palette_params)
  
    if @paint_palette.save
      render json: @paint_palette, status: :created
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
    @palette = PaintPalette.where(palette_id: params[:palette_id])
    @palette.destroy_all
    head :no_content
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paint_palette
      @paint_palette = PaintPalette.find(params[:id])
    end

    def set_palette
      @paint_palette = PaintPalette.find_by(palette_id: params[:palette_id])
    end

    

    # Only allow a list of trusted parameters through.
    def paint_palette_params
      params.require(:paint_palette).permit(:paint_id, :palette_id)
    end
end
end
end
