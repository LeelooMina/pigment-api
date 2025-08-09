class EnhancePigmentsWithAdvice < ActiveRecord::Migration[7.0]
  def change
    add_column :pigments, :toxicity_level, :string
    add_column :pigments, :mixing_behavior, :text
    add_column :pigments, :recommended_for, :text
    add_column :pigments, :avoid_mixing_with, :text
    add_column :pigments, :color_temperature, :string
    add_column :pigments, :opacity, :string
    add_column :pigments, :granulation, :string
    add_column :pigments, :lightfastness, :string
    add_column :pigments, :staining_power, :string
    add_column :pigments, :common_names, :text
  end
end