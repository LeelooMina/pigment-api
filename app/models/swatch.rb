class Swatch < ApplicationRecord
  belongs_to :user
  belongs_to :paint

  has_one_attached :image
end
