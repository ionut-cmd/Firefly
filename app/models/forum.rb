class Forum < ApplicationRecord
	belongs_to :user
	has_many :comments, dependent: :delete_all
	has_rich_text :richcontent

	self.per_page = 1
	extend FriendlyId
	friendly_id :title, use: :slugged 

	validates :title, presence: true,length: { in: 3..40 }
	validates :richcontent, presence: true
	validates :category, presence: true
end
