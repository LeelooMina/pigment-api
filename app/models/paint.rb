class Paint < ApplicationRecord
    has_many :palettes, through: => :paint_palette
    has_many :swatches
    has_one :pigment, through: => :paint_pigment
end
