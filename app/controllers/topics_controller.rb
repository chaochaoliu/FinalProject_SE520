class TopicsController < ApplicationController
  skip_authorization_check
  # load_and_authorize_resource
  def index
    @topics = Topic.all
  end

end
