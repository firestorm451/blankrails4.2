class Audittrail  < ActiveRecord::Base
	belongs_to :machine
	belongs_to :user

end