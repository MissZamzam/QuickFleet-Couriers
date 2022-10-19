class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :image_url, :category, :description
end
