class BlueprintsController < ApplicationController
  before_action :get_blueprint, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @blueprints = Blueprint.all
  end

  def show
  end

  def new
    @blueprint = Blueprint.new
  end

  def create
    @blueprint = Blueprint.new(blueprint_params.merge(user_id: current_user.id))
    respond_to do |format|
      if @blueprint.save!

        format.html { redirect_to blueprints_path, notice: 'Blueprint Saved Successfully'}
        format.js
      else
        format.html { render :new, alert: 'There was an error.' }
        format.js { redirect_back(fallback_location: blueprints_path, notice: 'There was an error.')}
      end
    end

  end

private
  def get_blueprint
    @blueprint = Blueprint.find(params[:id])
  end

  def blueprint_params
    params.require(:blueprint).permit(:name, :description, :source, :source_url, :demo_url)
  end
end