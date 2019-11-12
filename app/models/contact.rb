class Contact < ApplicationRecord

	validates :title, presence: true
	validates :body, presence: true
	validates :address, presence: true
end
