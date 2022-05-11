class AddFirstnameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firstname, :string, null:false
  end
end
