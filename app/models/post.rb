class Post < ApplicationRecord
  belongs_to :user

  validates :content, :title, presence: true, length: {minimum: 2, mexium: 100}

  has_many :likes
  has_many :comments, through: :comment_post
  has_one :palette, through: :palette_post




end
