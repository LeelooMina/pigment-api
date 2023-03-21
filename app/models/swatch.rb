class Swatch < ApplicationRecord
  belongs_to :user
  belongs_to :paint
end
