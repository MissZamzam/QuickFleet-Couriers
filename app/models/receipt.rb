class Receipt < ApplicationRecord
    has_one :tracking
    belongs_to :delivery
end
