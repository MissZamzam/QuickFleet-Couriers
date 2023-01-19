class User < ApplicationRecord
  # has_one :use_profile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
<<<<<<< HEAD
  # has_one :use_profile
=======
=======
  # has_one :use_profile
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
  # after_create :build_use_profile
# accepts_nested_attributes_for :use_profile

# def build_use_profile
#   UseProfile.create(user: self)
# end
<<<<<<< HEAD
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
=======
>>>>>>> 402ac273c0c5815f4bf86c91d241e04074ec257d
end
