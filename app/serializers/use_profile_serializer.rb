class UseProfileSerializer < ActiveModel::Serializer
  attributes :id, :avatar, :name, :email, :telephone, :location
end
