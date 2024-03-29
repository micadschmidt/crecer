class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :alumnonombrecompleto, presence: true
  validates :email, uniqueness: { scope: :email, message: "Este email ya tiene una cuenta." }
  #has_many :pagos
  #validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  #validates :foto, presence: true
  has_one_attached :foto
end
