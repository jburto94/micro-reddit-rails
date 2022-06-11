class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 3, maximum: 60 }
  validates :description, presence: true, length: { maximum: 300 }
end
