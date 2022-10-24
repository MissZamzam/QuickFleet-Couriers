class UsersSerializer < ActiveModel::Serializer
  attributes :id :username, :password, :email
end
