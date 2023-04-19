class Palette < ApplicationRecord
  belongs_to :user
  has_many :paint_palette
  has_many :paints, through: :paint_palette
  has_one :palette_post
  has_one :post, through: :palette_post

  has_many :color_families, through: :color_family_pigments, source: :color_family
end
