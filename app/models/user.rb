class User < ApplicationRecord
	acts_as_paranoid
	mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    has_many :questions
    has_many :answers
    has_many :points

end
