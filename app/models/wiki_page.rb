class WikiPage < ActiveRecord::Base
  belongs_to :wiki_topic
end
