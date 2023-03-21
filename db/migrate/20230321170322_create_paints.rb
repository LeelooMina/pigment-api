class CreatePaints < ActiveRecord::Migration[7.0]
  def change
    create_table :paints do |t|
      t.string :brand
      t.string :name
      t.string :transparent
      t.string :lightfast
      t.string :staining
      t.string :granulating
      t.boolean :available

      t.timestamps
    end
  end
end
