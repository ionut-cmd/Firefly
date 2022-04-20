class Comment < ApplicationRecord
  belongs_to :forum
  belongs_to :user
  validates :comment, presence: true # presence check for the listed feilds
end
