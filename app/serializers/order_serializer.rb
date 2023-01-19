class OrderSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :senderName, :receiverName, :natureOfGoods, :pickup, :destination
end
=======
  attributes :id, :sender_name, :receiver_name, :amount_paid, :nature_of_goods, :pickup, :destination, :service_id, :delivery_id, :receipt_id
end
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
