class UserSkillController < ApplicationController

def create
  @user_skill = UserSkill.new(params[:user_skill])
  @user_skill.user_id = params[:user_id]
  @user_skill.skill_id = params[:skill_id]
  if @user_skill.save
    redirect_to @user_skill, :notice  => "Successfully added skill."
  else
    redirect_to @user_skill, :notice => "There was a problem adding the skill."
  end
end

def new
  @user_skill = UserSkill.new  
end

end
