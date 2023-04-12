module Api
  module V1
    class PalettesController < Api::V1::ApplicationController
      before_action :set_palette, only: [:show, :update, :destroy, :paints]

      def index
        @palettes = Palette.all
        render json: @palettes
      end

      def show
        render json: @palette
      end

      def create
        @palette = Palette.new(palette_params)

        if @palette.save
          render json: @palette, status: :created, location: @palette
        else
          render json: @palette.errors, status: :unprocessable_entity
        end
      end

      def update
        if @palette.update(palette_params)
          render json: @palette
        else
          render json: @palette.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @palette.destroy
      end

      def paints
        @paints = @palette.paints.flat_map { |paint| paint.pigments.map(&:color_families) }.flatten.uniq
        
        render json: @paints
      end
      
      

      private

      def set_palette
        # puts params.inspect
        # @palette = Palette.find_by(id: params[:id])
        # puts @palette
     
          @palette = Palette.find_by(id: params[:palette_id])
          render json: { error: 'Palette not found' }, status: :not_found unless @palette
        
        
      end

      def palette_params
        params.require(:palette).permit(:user_id, :name, :description)
      end
    end
  end
end
