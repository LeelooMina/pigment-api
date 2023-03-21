class CreateColorFamilyPigments < ActiveRecord::Migration[7.0]
  def change
    create_table :color_family_pigments do |t|
      t.references :colorfamily, null: false, foreign_key: true
      t.references :pigment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
