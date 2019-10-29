class Question < ApplicationRecord
	has_many :answers

	belongs_to :user, -> { with_deleted }

	validates :title, presence: true
	validates :question_content, presence: true
end
