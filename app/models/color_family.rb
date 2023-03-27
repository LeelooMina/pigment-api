class ColorFamily < ApplicationRecord
    has_many :pigments, :through => :color_family_pigments

    
end
