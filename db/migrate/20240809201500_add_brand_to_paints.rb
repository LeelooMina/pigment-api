class AddBrandToPaints < ActiveRecord::Migration[7.0]
  def change
    add_reference :paints, :brand, foreign_key: true, null: true
  end
end