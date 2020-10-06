class Relationship < ApplicationRecord
  belongs_to :forager, class_name: "User"
  belongs_to :follower, class_name: "User"
end
