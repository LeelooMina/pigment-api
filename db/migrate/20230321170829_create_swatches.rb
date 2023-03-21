class CreateSwatches < ActiveRecord::Migration[7.0]
  def change
    create_table :swatches do |t|
      t.references :user, null: false, foreign_key: true
      t.references :paint, null: false, foreign_key: true
      t.string :img_url
      t.string :comments

      t.timestamps
    end
  end
end
