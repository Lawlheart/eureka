class StoriesController < ApplicationController
  before_action :get_blueprint, only: [:new, :create, :destroy]
  before_action :get_story, only: [:destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def new
    @story = Story.new
  end

  def create
    @story = @blueprint.stories.new(story_params)
    respond_to do |format|
      if @blueprint.save && @blueprint.user_id == current_user.id
        format.html { redirect_to blueprint_path(@blueprint), notice: 'Blueprint Successfully Saved' }
        format.js
      end
    end
  end

  def destroy
    if @blueprint.user_id == current_user.id
      @story.destroy
      respond_to do |format|
        format.html { redirect_to blueprint_path(@blueprint), notice: 'Story Successfully Deleted' }
        format.js
      end
    else
      flash[:alert] = 'Permission Denied'
      redirect_to blueprints_path
    end
  end

public

  def get_story
    @story = Story.find(params[:id])
  end

  def get_blueprint
    @blueprint = Blueprint.find(params[:blueprint_id])
  end

  def story_params
    params.require(:story).permit(:content)
  end
end