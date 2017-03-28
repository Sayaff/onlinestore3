class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :cart_items

  validates :email, :first_name, :last_name, :birthday, presence: true
  validates :email, uniqueness: true
end
