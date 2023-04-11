class AddColorFamilyIdToPigments < ActiveRecord::Migration[6.1]
  def change
    add_reference :pigments, :color_family, foreign_key: true
  end
end
