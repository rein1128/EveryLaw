class Answer < ApplicationRecord
	belongs_to :question
	belongs_to :user, -> { with_deleted }

	has_one :point
end
