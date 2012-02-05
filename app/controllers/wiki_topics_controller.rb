class WikiTopicsController < ApplicationController
  def show
    @topic = WikiTopic.find params[:id]
  end

  def new
    @wiki_topic = WikiTopic.new
  end

  def edit
    @wiki_topic = WikiTopic.find params[:id]
  end

  def create
    @wiki_topic = WikiTopic.new params[:wiki_topic]
    @wiki_topic.save ? redirect_to(wiki_topic_path(@wiki_topic)) : render(:action => :new)
  end

  def update
    @wiki_topic = WikiTopic.find params[:id]
    @wiki_topic.update_attributes(params[:wiki_topic]) ? redirect_to(wiki_topic_path(@wiki_topic)) : render(:action => :edit)
  end

  def destroy
    @wiki_topic = WikiTopic.find params[:id]
    @wiki_topic.destroy ? redirect_to(WikiTopic.first) : redirect_to(@wiki_topic)
  end
end
