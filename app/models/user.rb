class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  CONTACTPREFERENCE = [ "Email only", "Phone only", "Either"]
  validates :contact_preference, inclusion: { in: CONTACTPREFERENCE, message: "must be from the list" }

  belongs_to :charity, optional: true
  has_many :bookings
  has_many :products
end
