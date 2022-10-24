class Receipt < ApplicationRecord
    has_one :tracking
    belongs_to :delivery
    belongs_to :order
end
