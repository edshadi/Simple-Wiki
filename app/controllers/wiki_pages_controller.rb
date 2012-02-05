class WikiPagesController < ApplicationController
  def show
    @page = WikiPage.find params[:id]
  end

  def new
    @wiki_page = WikiPage.new
  end

  def edit
    @wiki_page = WikiPage.find params[:id]
  end

  def create
    @wiki_page = WikiPage.new params[:wiki_page]
    @wiki_page.save ? redirect_to(wiki_page_path(@wiki_page)) : render(:action => :new)
  end

  def update
    @wiki_page = WikiPage.find params[:id]
    @wiki_page.update_attributes(params[:wiki_page]) ? redirect_to(wiki_page_path(@wiki_page)) : render(:action => :edit)
  end

  def destroy
    @wiki_page = WikiPage.find params[:id]
    @wiki_page.destroy ? redirect_to(WikiPage.first) : redirect_to(@wiki_page)
  end
end
