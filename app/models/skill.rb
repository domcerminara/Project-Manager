class Skill < ActiveRecord::Base
  attr_accessible :name, :level, :description
  
  # Relationships
  #---------------------------
  has_many :user_skills
  has_many :users, :through => :user_skills
  has_many :project_skills
  has_many :projects, :through => :project_skills
  
  # Validations
  # ----------------------------
  validates_presence_of :name
	
  # Constants
  # ----------------------------
  
  # Callbacks
  # ----------------------------
  
  # Scopes
  # ----------------------------
  
  # Other Methods
  # ----------------------------
end
