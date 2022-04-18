class RemoveContentFromForum < ActiveRecord::Migration[6.1]
  def change
    remove_column :forums, :content
  end
end
