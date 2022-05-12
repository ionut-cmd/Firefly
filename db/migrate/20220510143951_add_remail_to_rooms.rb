class AddRemailToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :remail, :string
  end
end
