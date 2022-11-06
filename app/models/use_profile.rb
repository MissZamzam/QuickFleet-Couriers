class UseProfile < ApplicationRecord
    belongs_to :user
    belongs_to :admin
    validates_associated :user
    validates_associated :admin
end
