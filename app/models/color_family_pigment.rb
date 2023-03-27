class ColorFamilyPigment < ApplicationRecord
  belongs_to :colorfamily
  belongs_to :pigment

  validates_uniqueness_of :pigment
end
