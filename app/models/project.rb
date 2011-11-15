class Project < ActiveRecord::Base
  attr_accessible :name, :description, :team_size, :creator_id, :start_date, :end_date, :hours_per_week, :photo, :active, :skill_ids
  
  # Relationships
  #---------------------------
  has_many :user_projects
  has_many :users, :through => :user_projects
  has_many :project_skills
  has_many :skills, :through => :project_skills
  has_many :attachments
  
  # Photo Uploader
  # ----------------------------
	mount_uploader :photo, PhotoUploader
  
  # Nested Attributes
  # ----------------------------
  #accepts_nested_attributes_for :attachments, :reject_if => lambda { |attachment| attachment[:name].blank? || attachment[:filename].blank? }
  
  # Validations
  # ----------------------------
  validates_presence_of :name, :description
  validates_numericality_of :team_size, :hours_per_week
  validates_date :start_date, :on_or_before => lambda { :end_date }, :on_or_before_message => "must be on or before end date"
  validates_date :start_date, :on_or_after => lambda { Date.current }, :on_or_after_message => "can't be before today"
	
  # Constants
  # ----------------------------
  
  # Callbacks
  # ----------------------------
  
  # Scopes
  # ----------------------------
  
  # Other Methods
  # ----------------------------
  
  # the project creator
  def creator
  	User.find_by_id(creator_id)
  end
  
end
