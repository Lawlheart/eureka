class BlueprintsController < ApplicationController
  before_action :get_blueprint, only: [:show]

  def index
    @blueprints = Blueprint.all
  end

  def show
  end

private
  def get_blueprint
    @blueprint = Blueprint.find(params[:id])
  end
end