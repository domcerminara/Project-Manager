class UserProjectsController < ApplicationController

before_filter :login_required

def create
  @user_project = UserProject.new(params[:user_project])
  @user_project.user_id = params[:user_id]
  @user_project.project_id = params[:project_id]
  if @user_project.save
    redirect_to @user_project, :notice  => "Successfully added user project."
  else
    redirect_to @user_project, :notice => "There was a problem adding the project."
  end
end

def new
  @user_project = UserProject.new  
end

def index
  @user_projects = current_user.user_projects.all
end

def show
  @user_project = UserProject.find(params[:id])
end

def destroy
  @user_project = UserProject.find(params[:id])
  @user_project.destroy
  redirect_to user_projects_url, :notice => "Successfully destroyed user project."
end

end
