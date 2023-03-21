class CreatePaintPigments < ActiveRecord::Migration[7.0]
  def change
    create_table :paint_pigments do |t|
      t.references :paint, null: false, foreign_key: true
      t.references :pigment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
