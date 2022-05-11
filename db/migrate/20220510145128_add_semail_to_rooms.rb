class AddSemailToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :semail, :string
  end
end
