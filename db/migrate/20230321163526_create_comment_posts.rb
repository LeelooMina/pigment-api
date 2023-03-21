class CreateCommentPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :comment_posts do |t|
      t.belongs_to :post, null: false, foreign_key: true
      t.belongs_to :comment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
