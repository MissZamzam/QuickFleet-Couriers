class User < ApplicationRecord
  # has_one :use_profile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  # has_one :use_profile
=======
  # after_create :build_use_profile
# accepts_nested_attributes_for :use_profile

# def build_use_profile
#   UseProfile.create(user: self)
# end
>>>>>>> f00bfeb06b75872601ee403550d58c39abdf34bf
end
