class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name, null: false
      t.text :description
      t.string :website
      t.string :country
      t.timestamps
    end
    
    add_index :brands, :name, unique: true
  end
end