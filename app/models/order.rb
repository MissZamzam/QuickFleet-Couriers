class Order < ApplicationRecord  
    belongs_to :use_profile

    has_one :receipt

    validates :sender_name, :receiver_name, :destination, :pickup, :nature_of_goods,  presence: true

    # has_one :tracking
end
