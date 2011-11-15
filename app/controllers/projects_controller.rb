class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    #@attachments = @project.attachments
    @skills = Skill.all
  end

  def new
    @project = Project.new
    
    # Builds 3 attachment forms on the new project page
    #3.times {@project.attachments.build}
  end

  def create
    @project = Project.new(params[:project])
    
    @skills = Skill.all
    
    if current_user
    	@project.creator_id = current_user.id
	end
	
    if @project.save
      redirect_to @project, :notice => "Successfully created project."
    else
      render :action => 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to @project, :notice  => "Successfully updated project."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url, :notice => "Successfully destroyed project."
  end
end
