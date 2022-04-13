class CreateForums < ActiveRecord::Migration[6.1]
  def change
    create_table :forums do |t|
      t.string :title
      t.text :content
      t.string :imageurl

      t.timestamps
    end
  end
end
