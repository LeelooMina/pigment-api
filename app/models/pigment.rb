class Pigment < ApplicationRecord
    has_many :color_families, through: :color_family_pigments
    has_many :paints, through: :paint_pigments
end
