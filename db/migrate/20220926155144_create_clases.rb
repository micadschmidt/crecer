class CreateClases < ActiveRecord::Migration[7.0]
  def change
    create_table :clases do |t|
      t.string :categoria
      t.string :fotos
      t.text :descripcion
      t.references :profesor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
