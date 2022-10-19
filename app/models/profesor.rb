class Profesor < ApplicationRecord
  validates :descripcion_profesor, length: { minimum: 10, maximum: 400 }
  validates :nombre, presence: true
  validates :apellido, presence: true
  #validates :foto_profesor, presence: true
  #has_one_attached :foto_profesor
end
