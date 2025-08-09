class Brand < ApplicationRecord
  has_many :paints
  has_many :pigments, through: :paints
  
  validates :name, presence: true, uniqueness: true
  validates :website, format: { with: URI::regexp(%w[http https]), allow_blank: true }
end