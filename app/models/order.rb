class Order < ApplicationRecord  
    # belongs_to :use_profile

    # has_one :receipt
    # has_one :status

    validates :senderName, :receiverName, :destination, :pickup, :natureOfGoods,  presence: true

    # has_one :tracking
end
