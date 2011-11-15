class Project < ActiveRecord::Base
  attr_accessible :name, :description, :team_size, :creator_id, :start_date, :end_date, :hours_per_week, :photo, :active
  
  # Relationships
  #---------------------------
  has_many :user_projects
  has_many :users, :through => :user_projects
  has_many :project_skills
  has_many :skills, :through => :project_skills
  has_many :attachments
  
  # Nested Attributes
  # ----------------------------
  accepts_nested_attributes_for :skills, :reject_if => lambda { |skill| skill[:name].blank? }
  
  # Validations
  # ----------------------------
  validates_presence_of :name, :description
  validates_numericality_of :team_size, :hours_per_week
  validates_date :start_date, :on_or_before => lambda { :end_date }, :on_or_before_message => "must be on or before end date"
	
  # Constants
  # ----------------------------
  
  # Callbacks
  # ----------------------------
  
  # Scopes
  # ----------------------------
  
  # Other Methods
  # ----------------------------
  
end
