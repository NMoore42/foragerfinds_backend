class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user

  validates :user_id, :title, :description, presence: true
end
