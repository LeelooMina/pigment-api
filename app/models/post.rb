class Post < ApplicationRecord
  belongs_to :user

  validates :content, :title, presence: true, length: { minimum: 2, maximum: 100 }

  has_many :likes
  has_many :comment_posts
  has_many :comments, through: :comment_posts
  has_and_belongs_to_many :palettes

  has_one_attached :image
end
