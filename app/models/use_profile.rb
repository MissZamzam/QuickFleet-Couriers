class UseProfile < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
    # belongs_to :user

    # has_many :orders
=======
=======
    # belongs_to :user

    # has_many :orders
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
    belongs_to :user
    belongs_to :admin
    validates_associated :user
    validates_associated :admin
<<<<<<< HEAD
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
end
