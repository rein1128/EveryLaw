class Answer < ApplicationRecord
	belongs_to :question
	belongs_to :user, -> { with_deleted }

	has_one :point

	validates :answer_content, presence: true
end
