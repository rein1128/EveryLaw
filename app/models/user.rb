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


    def totle(user_id)

    	points = Point.where(user_id: user_id)
    	point_count = 0
    	points.each do |p|
    		point_count += p.point
    	end

    	totle = point_count
    end

end
