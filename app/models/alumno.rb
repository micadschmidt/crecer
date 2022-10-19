class Alumno < ApplicationRecord
  belongs_to :clase
  has_many :clases

  validates :edad, presence: true
  validates :clase, presence: true
end
