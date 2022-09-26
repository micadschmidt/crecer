class CreateAlumnos < ActiveRecord::Migration[7.0]
  def change
    create_table :alumnos do |t|
      t.integer :edad
      t.string :clase

      t.timestamps
    end
  end
end
