class Palette < ApplicationRecord
  belongs_to :user
  has_many :paint_palette
  has_many :paints, through: :paint_palette
  has_one :post, through: :palette_post
end
