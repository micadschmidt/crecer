class AddAlumnonombrecompletoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :alumnonombrecompleto, :string
  end
end
