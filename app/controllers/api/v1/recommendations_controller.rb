module Api
  module V1
    class RecommendationsController < Api::V1::ApplicationController
      skip_before_action :authenticate, only: %i[palette_suggestions pigment_advice compatible_pigments featured_palettes]

      # GET /recommendations/palette_suggestions?palette_id=1
      def palette_suggestions
        @palette = Palette.find(params[:palette_id])
        current_pigments = @palette.paints.joins(:pigments).pluck('pigments.id')
        
        # Find complementary colors and missing primary/secondary colors
        suggested_pigments = suggest_complementary_pigments(current_pigments)
        
        render json: {
          palette: @palette.as_json(include: :paints),
          suggestions: suggested_pigments.as_json(include: :paints)
        }
      end

      # GET /recommendations/pigment_advice?pigment_id=1
      def pigment_advice
        @pigment = Pigment.find(params[:pigment_id])
        
        advice = {
          pigment: @pigment,
          mixing_advice: @pigment.mixing_behavior,
          recommended_for: @pigment.recommended_for,
          avoid_mixing_with: parse_avoid_list(@pigment.avoid_mixing_with),
          compatible_pigments: compatible_pigments_for(@pigment)
        }
        
        render json: advice
      end

      # GET /recommendations/compatible_pigments?pigment_id=1
      def compatible_pigments
        @pigment = Pigment.find(params[:pigment_id])
        @compatible = Pigment.compatible_with(@pigment.id)
                            .where.not(id: @pigment.id)
                            .limit(10)
        
        render json: @compatible.as_json(include: :paints)
      end

      # GET /recommendations/featured_palettes
      def featured_palettes
        @featured_palettes = Palette.joins(:user)
                                   .where(users: { username: ['artist1', 'artist2', 'curator'] })
                                   .or(Palette.where("description LIKE ?", "%featured%"))
                                   .includes(:paints, :user)
        
        render json: @featured_palettes.as_json(
          include: { 
            paints: { include: :pigments },
            user: { only: [:username, :first_name, :last_name] }
          }
        )
      end

      # GET /recommendations/common_palettes
      def common_palettes
        # Return commonly recommended palettes
        common_palettes = [
          {
            name: "Split Primary Palette",
            description: "Essential warm and cool primaries for versatile mixing",
            colors: ["Ultramarine Blue", "Prussian Blue", "Cadmium Red", "Alizarin Crimson", "Cadmium Yellow", "Hansa Yellow"]
          },
          {
            name: "Earth Tone Palette", 
            description: "Natural earth tones for landscapes and portraits",
            colors: ["Burnt Sienna", "Raw Umber", "Yellow Ochre", "Payne's Gray", "Titanium White"]
          },
          {
            name: "Beginner's Palette",
            description: "Perfect starter palette with good mixing colors",
            colors: ["Ultramarine Blue", "Cadmium Red Medium", "Cadmium Yellow Light", "Burnt Sienna", "Titanium White"]
          }
        ]
        
        render json: { palettes: common_palettes }
      end

      private

      def suggest_complementary_pigments(current_pigment_ids)
        # Get color families represented in current palette
        current_families = ColorFamily.joins(pigments: :paint_pigments)
                                    .where(pigments: { id: current_pigment_ids })
                                    .pluck(:id, :name)
                                    .uniq

        # Find missing primary/secondary colors
        all_families = ColorFamily.all.pluck(:id, :name)
        missing_families = all_families - current_families
        
        # Return pigments from missing color families
        Pigment.joins(:color_families)
              .where(color_families: { id: missing_families.map(&:first) })
              .limit(6)
      end

      def compatible_pigments_for(pigment)
        Pigment.compatible_with(pigment.id)
              .where.not(id: pigment.id)
              .limit(5)
              .as_json(include: :paints)
      end

      def parse_avoid_list(avoid_string)
        return [] if avoid_string.blank?
        avoid_string.split(',').map(&:strip)
      end
    end
  end
end