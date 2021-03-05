class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :charity, optional: true
  has_many :bookings
  has_many :products
  has_many :requests
  has_one_attached :photo


  def name
    "#{first_name} #{last_name}"
  end
end
