class Attachment < ActiveRecord::Base
  attr_accessible :name, :project_id
  
  # Relationships
  #---------------------------
  belongs_to :project
  
  # Validations
  # ----------------------------
	
  # Constants
  # ----------------------------
  
  # Callbacks
  # ----------------------------
  
  # Scopes
  # ----------------------------
  
  # Other Methods
  # ----------------------------
end
