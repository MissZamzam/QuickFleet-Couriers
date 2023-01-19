class OrderSerializer < ActiveModel::Serializer
<<<<<<< HEAD
<<<<<<< HEAD
  attributes :id, :senderName, :receiverName, :natureOfGoods, :pickup, :destination
end
=======
  attributes :id, :sender_name, :receiver_name, :amount_paid, :nature_of_goods, :pickup, :destination, :service_id, :delivery_id, :receipt_id
end
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
  attributes :id, :senderName, :receiverName, :natureOfGoods, :pickup, :destination
end
  attributes :id, :sender_name, :receiver_name, :amount_paid, :nature_of_goods, :pickup, :destination, :service_id, :delivery_id, :receipt_id
end
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
