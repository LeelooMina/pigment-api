class AddColorFamilyToPaints < ActiveRecord::Migration[7.0]
  def change
    add_reference :paints, :color_family, null: false, foreign_key: true, default: 1
  end
end
