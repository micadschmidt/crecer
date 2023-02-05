class AddAlumnoNombreCompleto2toUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :alumnonombrecompleto2, :string
  end
end
