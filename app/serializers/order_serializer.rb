class OrderSerializer < ActiveModel::Serializer
  attributes :id, :senderName, :receiverName, :natureOfGoods, :pickup, :destination, :use_profile_id
end
