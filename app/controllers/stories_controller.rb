class StoriesController < ApplicationController
  before_action :get_blueprint, only: [:new, :create]

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

public
  def get_blueprint
    @blueprint = Blueprint.find(params[:blueprint_id])
  end

  def story_params
    params.require(:story).permit(:content)
  end
end