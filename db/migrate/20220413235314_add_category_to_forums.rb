class AddCategoryToForums < ActiveRecord::Migration[6.1]
  def change
    add_column :forums, :category, :string, null: false
  end
end
