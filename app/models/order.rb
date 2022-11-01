class Order < ApplicationRecord  
    belongs_to :use_profile

    has_one :receipt

    # has_one :tracking
end
