class WikisController < ApplicationController

  def show
    @wiki = Wiki.find_by_id(params[:id]) || Wiki.first
    session[:wiki_id] = @wiki.id
  end

  def new
    @wiki = Wiki.new
  end

  def edit
    @wiki = Wiki.find params[:id]
  end

  def create
    @wiki = Wiki.new params[:wiki]
    @wiki.save ? redirect_to(wiki_path(@wiki)) : render(:action => :new)
  end

  def update
    @wiki = Wiki.find params[:id]
    @wiki.update_attributes(params[:wiki]) ? redirect_to(wiki_path(@wiki)) : render(:action => :edit)
  end

  def destroy
    @wiki = Wiki.find params[:id]
    @wiki.destroy ? redirect_to(Wiki.first) : redirect_to(@wiki)
  end
end
