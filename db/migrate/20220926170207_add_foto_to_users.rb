class AddFotoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :foto, :string
  end
end
