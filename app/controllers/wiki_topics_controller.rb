class WikiTopicsController < ApplicationController
  def show
    @topic = WikiTopic.find params[:id]
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end
end
