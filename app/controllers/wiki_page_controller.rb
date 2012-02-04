class WikiPageController < ApplicationController
  def show
    @page = WikiPage.find params[:id]
  end
end
