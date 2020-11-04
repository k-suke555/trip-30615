class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :plans
  has_many :comments
  with_options presence: true do
    validates :password, format: { with: /\A[a-z0-9]+\z/i }
    validates :nickname
  end
end
