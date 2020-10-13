class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :birthday, :username, :email, :bio
end
