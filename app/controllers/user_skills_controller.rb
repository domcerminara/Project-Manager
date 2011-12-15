class UserSkillsController < ApplicationController

before_filter :login_required

def create
  @user_skill = UserSkill.new(params[:user_skill])
  @user_skill.user_id = params[:user_id]
  @user_skill.skill_id = params[:skill_id]
  if @user_skill.save
    redirect_to @user_skill, :notice  => "Successfully added user skill."
  else
    redirect_to @user_skill, :notice => "There was a problem adding the skill."
  end
end

def new
  @user_skill = UserSkill.new  
end

def index
  @user_skills = current_user.user_skills.all
end

def show
  @user_skill = UserSkill.find(params[:id])
end

def destroy
  @user_skill = UserSkill.find(params[:id])
  @user_skill.destroy
  redirect_to user_skills_url, :notice => "Successfully destroyed user skill."
end


end
