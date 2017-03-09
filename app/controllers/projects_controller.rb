class ProjectsController < ApplicationController
  before_action :get_blueprint, only: [:create]
  before_action :get_project, only: [:show]
  before_action :authenticate_user!
  def index

  end

  def create
    @project = Project.new(user_id: current_user.id, blueprint_id: @blueprint.id)
    if @project.save!
      flash[:notice] = 'Project Successfully Created.'
      redirect_to project_path(@project)
    else
      flash[:alert] = 'Something went wrong.'
      redirect_to blueprint_path(@blueprint)
    end
  end

  def show

  end

  def edit

  end

private
  def get_blueprint
    @blueprint = Blueprint.find(params[:blueprint_id])
  end

  def get_project
    @project = Project.find(params[:id])
    @blueprint = @project.blueprint
  end

  def project_params
    params.require(:project).permit(:blueprint_id, :demo_url, :image_url, :status)
  end
end