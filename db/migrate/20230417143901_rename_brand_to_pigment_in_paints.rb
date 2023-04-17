class RenameBrandToPigmentInPaints < ActiveRecord::Migration[6.1]
  def change
    remove_column :paints, :brand, :string
    add_column :paints, :pigment, :string
  end
end
