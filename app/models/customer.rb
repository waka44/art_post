class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         validates :name,  presence: true
         
  has_many :arts,    dependent: :destroy
  has_many :nices,   dependent: :destroy
  has_many :coments, dependent: :destroy
  has_many :art_customers
  has_many :arts, through: :art_customers
  
end
