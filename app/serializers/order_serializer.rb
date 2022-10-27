class OrderSerializer < ActiveModel::Serializer
  attributes :id, :senderName, :receiverName, :amountPaid, :natureOfGoods, :pickup, :destination
end
