class CreateProfesors < ActiveRecord::Migration[7.0]
  def change
    create_table :profesors do |t|
      t.string :nombre
      t.string :apellido
      t.text :descripcion_profesor
      t.string :foto_profesor

      t.timestamps
    end
  end
end
