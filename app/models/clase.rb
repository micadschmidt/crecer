class Clase < ApplicationRecord
  belongs_to :profesor

  CATEGORIAS = ["Estimulación temprana", "Telas", "Gimnasia artística"]
  validates :categoria, inclusion: { in: CATEGORIAS }
  validates :descripcion, length: { minimum: 10, maximum: 400 }
  validates :categoria, presence: true

  #has_many_attached :fotos
end
