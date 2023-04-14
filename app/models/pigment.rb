class Pigment < ApplicationRecord
    has_many :color_family_pigments
    has_many :color_families, through: :color_family_pigments
    has_many :associated_color_families, through: :color_family_pigments, source: :color_family
  end
  