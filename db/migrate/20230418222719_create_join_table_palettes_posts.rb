class CreateJoinTablePalettesPosts < ActiveRecord::Migration[7.0]
  def change
    create_join_table :palettes, :posts do |t|
      # t.index [:palette_id, :post_id]
      # t.index [:post_id, :palette_id]
    end
  end
end
