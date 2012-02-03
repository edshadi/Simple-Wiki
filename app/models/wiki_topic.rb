class WikiTopic < ActiveRecord::Base
  belongs_to :wiki
  has_many :wiki_pages
end
