class Post < ApplicationRecord
 	has_one_attached :image
 	has_one_attached :video
	belongs_to :user
	has_many :comments, as: :commentable, dependent: :destroy

	enum status: [:published, :draft]
end
