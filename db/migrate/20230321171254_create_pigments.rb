class CreatePigments < ActiveRecord::Migration[7.0]
  def change
    create_table :pigments do |t|
      t.string :name
      t.string :description
      t.boolean :available

      t.timestamps
    end
  end
end
