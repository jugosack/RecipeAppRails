class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :foods
  has_many :recipes

  validates :name, presence: true, length: { in: 1..50 }
  def admin?(requested_role)
    role == requested_role.to_s
  end
end
