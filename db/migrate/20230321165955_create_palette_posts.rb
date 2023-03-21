class CreatePalettePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :palette_posts do |t|
      t.references :palette, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
