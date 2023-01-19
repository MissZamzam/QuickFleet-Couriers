class UseProfile < ApplicationRecord
<<<<<<< HEAD
    # belongs_to :user

    # has_many :orders
=======
    belongs_to :user
    belongs_to :admin
    validates_associated :user
    validates_associated :admin
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
end
