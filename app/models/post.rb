class Post < ApplicationRecord
  belongs_to :user

  validates :content :title, presence: true, length: {minimum: 2, mexium: 100}

  has_many :likes

  




end
