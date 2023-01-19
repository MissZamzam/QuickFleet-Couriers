<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
class Order < ApplicationRecord  
    # belongs_to :use_profile

    has_one :receipt

    validates :senderName, :receiverName, :destination, :pickup, :natureOfGoods,  presence: true

    # has_one :tracking
<<<<<<< HEAD
=======
class Order < ApplicationRecord
    belongs_to :delivery
    
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======

class Order < ApplicationRecord
    belongs_to :delivery
    
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
end
