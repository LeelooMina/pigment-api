class Paint < ApplicationRecord
  has_many :palettes, through: :paint_palette
  has_many :paint_pigments
  has_many :pigments, through: :paint_pigments
  has_one :swatch, through: :color_family_pigments, source: :swatch
  belongs_to :color_family
  belongs_to :brand, optional: true
  
  validates :name, presence: true
  validates :transparent, inclusion: { in: %w[Transparent Semi-Transparent Opaque] }, allow_blank: true
  validates :lightfast, inclusion: { in: ['ASTM I', 'ASTM II', 'ASTM III'] }, allow_blank: true
  validates :staining, inclusion: { in: %w[Low Medium High] }, allow_blank: true
  validates :granulating, inclusion: { in: ['Yes', 'No'] }, allow_blank: true
end
