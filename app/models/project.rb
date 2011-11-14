class Project < ActiveRecord::Base
  attr_accessible :name, :description, :team_size, :creator_id, :start_date, :end_date, :hours_per_week, :photo, :active
  
  has_many :user_projects
  has_many :users, :through => :user_projects
  has_many :project_skills
  has_many :skills, :through => :project_skills
  has_many :attachments
end
