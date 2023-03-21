class CreateColorFamilies < ActiveRecord::Migration[7.0]
  def change
    create_table :color_families do |t|
      t.string :name
      t.string :swatch_url

      t.timestamps
    end
  end
end
