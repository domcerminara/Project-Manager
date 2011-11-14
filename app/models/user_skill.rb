class UserSkill < ActiveRecord::Base
	attr_accessible :user_id, :skill_id
	
	# Relationships
	#---------------------------
	belongs_to :user
	belongs_to :skill
	
	
end
