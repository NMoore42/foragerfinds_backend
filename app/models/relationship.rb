class Relationship < ApplicationRecord
  belongs_to :forager, class_name: "User"
  belongs_to :follower, class_name: "User"

  validates :follower_id, :forager_id, presence: true
  validates :follower_id, uniqueness: { scope: :forager_id, message: "/ Forager relationship already exists"}
end
