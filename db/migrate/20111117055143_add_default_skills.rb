class AddDefaultSkills < ActiveRecord::Migration
  def up
  	ruby = Skill.new
  	ruby.name = "Ruby Programming"
  	ruby.level = 1
  	ruby.description = "Proficiency in Ruby on Rails development."
  	ruby.save!
  	
  	doc = Skill.new
  	doc.name = "Project Documentation"
  	doc.level = 3
  	doc.description = "Ability to generate necessary graphs and documents for a project."
  	doc.save!
  	
  	qa = Skill.new
  	qa.name = "Quality Assurance"
  	qa.level = 5
  	qa.description = "Mid-level knowledge of industry-specific quality assurance testing methodologies"
  	qa.save!
  	
  	color = Skill.new
  	color.name = "Color Awesomeness"
  	color.level = 10
  	color.description = "High-level proficiency in all things color. Essentially, you must be color royalty!"
  	color.save!
  	
  	pm = Skill.new
  	pm.name = "Project Management Guru"
  	pm.level = 10
  	pm.description = "High level knowledge of how to do things--LIKE A BOSS!!!."
  	pm.save!
  end

  def down
  	ruby = Skill.where("name = ?", "Ruby Programming").first
  	Skill.delete ruby
  	
  	doc = Skill.where("name = ?", "Project Documentation").first
  	Skill.delete doc
  	
  	qa = Skill.where("name = ?", "Quality Assurance").first
  	Skill.delete qa
  	
  	color = Skill.where("name = ?", "Color Awesomeness").first
  	Skill.delete color
  	
  	pm = Skill.where("name = ?", "Project Management Guru").first
  	Skill.delete pm
  end
end
