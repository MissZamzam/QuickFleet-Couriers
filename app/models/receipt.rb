class Receipt < ApplicationRecord
    # has_one :tracking
    # belongs_to :delivery
    # belongs_to :order


    # validates :receipt_no, uniqueness: true

    validates :sender_name, :receiver_name, :destination,  presence: true
end
 