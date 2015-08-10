class Box  < ActiveRecord::Base
	belongs_to :machine
	belongs_to :user
	has_many :box_users

end