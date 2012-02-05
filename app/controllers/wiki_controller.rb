class WikiController < ApplicationController
  def show
    @wiki = Wiki.find_by_id(params[:id]) || Wiki.first
    session[:wiki_id] = @wiki.id
  end
end
