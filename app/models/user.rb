class User < ApplicationRecord
  # has_one :use_profile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # after_create :build_use_profile
# accepts_nested_attributes_for :use_profile

# def build_use_profile
#   UseProfile.create(user: self)
# end
end
