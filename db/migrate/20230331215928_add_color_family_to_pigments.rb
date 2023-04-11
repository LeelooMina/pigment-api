class AddColorFamilyToPigments < ActiveRecord::Migration[7.0]
  def change
    add_reference :pigments, :color_family, foreign_key: true
  end
end
