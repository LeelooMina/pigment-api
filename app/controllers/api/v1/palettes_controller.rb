class PalettesController < ApplicationController
  before_action :set_palette, only: %i[ show update destroy ]

  # GET /palettes
  def index
    @palettes = Palette.all

    render json: @palettes
  end

  # GET /palettes/1
  def show
    render json: @palette
  end

  # POST /palettes
  def create
    @palette = Palette.new(palette_params)

    if @palette.save
      render json: @palette, status: :created, location: @palette
    else
      render json: @palette.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /palettes/1
  def update
    if @palette.update(palette_params)
      render json: @palette
    else
      render json: @palette.errors, status: :unprocessable_entity
    end
  end

  # DELETE /palettes/1
  def destroy
    @palette.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palette
      @palette = Palette.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def palette_params
      params.require(:palette).permit(:user_id, :name, :description)
    end
end
