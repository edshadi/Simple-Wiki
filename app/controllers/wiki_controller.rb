class WikiController < ApplicationController
  def index
    @wikis = Wiki.all
  end
end
