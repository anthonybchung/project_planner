class ProjectsController < ApplicationController
  def index
    if params[:query].present?
      @projects = Project.where(["name ILIKE ?", "%#{params[:query]}%"])
    else
      @projects = Project.all
    end

  end

  def new

  end

  def create

  end

  def show
    @project = Project.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
