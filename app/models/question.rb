class Question < ApplicationRecord
	has_many :answers

	belongs_to :user, -> { with_deleted }
end
