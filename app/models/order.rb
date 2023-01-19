<<<<<<< HEAD
class Order < ApplicationRecord  
    # belongs_to :use_profile

    has_one :receipt

    validates :senderName, :receiverName, :destination, :pickup, :natureOfGoods,  presence: true

    # has_one :tracking
=======
class Order < ApplicationRecord
    belongs_to :delivery
    
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
end
