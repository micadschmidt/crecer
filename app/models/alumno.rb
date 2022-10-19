class Alumno < ApplicationRecord
  belongs_to :clase

  validates :edad, presence: true
  validates :clase, presence: true
end
