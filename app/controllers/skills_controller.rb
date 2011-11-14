class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(params[:skill])
    if @skill.save
      redirect_to @skill, :notice => "Successfully created skill."
    else
      render :action => 'new'
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:id])
    if @skill.update_attributes(params[:skill])
      redirect_to @skill, :notice  => "Successfully updated skill."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_url, :notice => "Successfully destroyed skill."
  end
end
