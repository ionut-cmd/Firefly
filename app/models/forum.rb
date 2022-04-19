class Forum < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :delete_all
	has_rich_text :richcontent
end
