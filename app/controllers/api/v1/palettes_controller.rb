module Api
  module V1
    class PalettesController < Api::V1::ApplicationController
      before_action :set_palette, only: [:show, :update, :destroy]
      before_action :get_paints, only: [:paints]

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
          render json: @palette, status: :created
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
        @paints = @palette.paints.includes(:pigments)
      
        render json: @paints.as_json(include: :pigments)
      end
      
      
      
      

      private

      def set_palette
        # puts params.inspect
        # @palette = Palette.find_by(id: params[:id])
        # puts @palette
     
          @palette = Palette.find_by(id: params[:id])
          render json: { error: 'Palette not found' }, status: :not_found unless @palette
        
        
      end

      
      
            def get_paints
      
              @palette = Palette.find_by(id: params[:palette_id])
              render json: { error: 'Palette not found' }, status: :not_found unless @palette
            
            
            end

      

      def palette_params
        params.require(:palette).permit(:user_id, :name, :description)
      end
    end
  end
end

