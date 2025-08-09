class Pigment < ApplicationRecord
  has_many :color_family_pigments
  has_many :color_families, through: :color_family_pigments
  has_many :associated_color_families, through: :color_family_pigments, source: :color_family
  has_many :paint_pigments
  has_many :paints, through: :paint_pigments
  
  validates :name, presence: true
  validates :toxicity_level, inclusion: { in: %w[Low Medium High] }, allow_blank: true
  validates :color_temperature, inclusion: { in: %w[Warm Cool Neutral] }, allow_blank: true
  validates :opacity, inclusion: { in: %w[Transparent Semi-Transparent Opaque] }, allow_blank: true
  validates :granulation, inclusion: { in: %w[Low Medium High] }, allow_blank: true
  validates :lightfastness, inclusion: { in: ['ASTM I', 'ASTM II', 'ASTM III'] }, allow_blank: true
  validates :staining_power, inclusion: { in: %w[Low Medium High] }, allow_blank: true
  
  scope :by_color_family, ->(color_family_id) { joins(:color_families).where(color_families: { id: color_family_id }) }
  scope :recommended_for_mixing, -> { where("mixing_behavior LIKE ?", "%good mixing%") }
  scope :compatible_with, ->(pigment_id) do
    pigment = find(pigment_id)
    where("avoid_mixing_with IS NULL OR avoid_mixing_with NOT LIKE ?", "%#{pigment.name}%")
  end
end
  