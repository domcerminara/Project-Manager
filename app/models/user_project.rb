class UserProject < ActiveRecord::Base
	attr_accessible :user_id, :project_id
	
	# Relationships
	#---------------------------
	belongs_to :user
	belongs_to :project
	
	
end
