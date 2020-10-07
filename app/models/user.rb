class User < ApplicationRecord
  has_secure_password

  has_many :relationships_where_follower, class_name: "Relationship", foreign_key: :follower_id, dependent: :destroy
  has_many :foragers, through: :relationships_where_follower, source: :forager
  has_many :relationships_where_forager, class_name: "Relationship", foreign_key: :forager_id, dependent: :destroy
  has_many :followers, through: :relationships_where_forager, source: :follower
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  validates :first_name, :last_name, :birthday, :username, :password, :email, :bio, presence: true
  validates :email, :username, uniqueness: true
end
