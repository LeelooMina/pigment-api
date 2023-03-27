class PaintPigment < ApplicationRecord
  belongs_to :paint
  belongs_to :pigment

  validates_uniqueness_of :pigment
end
