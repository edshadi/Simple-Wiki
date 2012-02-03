class Wiki < ActiveRecord::Base
  has_many :wiki_topics
end
