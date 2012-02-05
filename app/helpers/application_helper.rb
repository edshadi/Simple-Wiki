module ApplicationHelper
  def current_wiki
    if session[:wiki_id].present?
      @current_wiki ||= Wiki.find(session[:wiki_id])
    else
      @current_wiki, session[:wiki_id] = [Wiki.first, Wiki.first.id]
    end
    @current_wiki
  end
end
