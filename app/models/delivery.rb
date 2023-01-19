 class Delivery < ApplicationRecord
    # has_one :receipt
    # has_many :orders

class Delivery < ApplicationRecord
    has_one :receipt
    has_many :orders
end
