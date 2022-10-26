class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :image_url, :category, :description
end
