class WikiTopicController < ApplicationController
  def show
    @topic = WikiTopic.find params[:id]
  end
end
