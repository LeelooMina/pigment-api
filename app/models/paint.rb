class Paint < ApplicationRecord
  has_many :palettes, through: :paint_palette
  has_many :paint_pigments
  has_many :pigments, through: :paint_pigments
 

  has_one :swatch, through: :color_families, source: :swatch
end
