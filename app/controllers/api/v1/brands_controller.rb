module Api
  module V1
    class BrandsController < Api::V1::ApplicationController
      before_action :set_brand, only: %i[show update destroy]
      skip_before_action :authenticate, only: %i[index show]

      # GET /brands
      def index
        @brands = Brand.all.includes(:paints)
        render json: @brands.as_json(include: { paints: { only: [:id, :name, :pigment] } })
      end

      # GET /brands/1
      def show
        render json: @brand.as_json(include: { paints: { include: :pigments } })
      end

      # POST /brands
      def create
        @brand = Brand.new(brand_params)

        if @brand.save
          render json: @brand, status: :created
        else
          render json: @brand.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /brands/1
      def update
        if @brand.update(brand_params)
          render json: @brand
        else
          render json: @brand.errors, status: :unprocessable_entity
        end
      end

      # DELETE /brands/1
      def destroy
        @brand.destroy
      end

      private

      def set_brand
        @brand = Brand.find(params[:id])
      end

      def brand_params
        params.require(:brand).permit(:name, :description, :website, :country)
      end
    end
  end
end