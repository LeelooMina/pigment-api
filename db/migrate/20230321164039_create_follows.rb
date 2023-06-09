class CreateFollows < ActiveRecord::Migration[7.0]
  def change
    create_table :follows do |t|
      t.belongs_to :follower, null: false, foreign_key: { to_table: :users }, class_name: 'User'
      t.belongs_to :followee, null: false, foreign_key: { to_table: :users }, class_name: 'User'

      t.timestamps
    end
  end
end
