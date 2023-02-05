class AddAlumnoNombreCompleto1toUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :alumnonombrecompleto1, :string
  end
end
