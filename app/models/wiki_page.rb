class WikiPage < ActiveRecord::Base
  belongs_to :wiki_topic
  DESCRIPTION_LENGTH = 200

  def description
    self.content.truncate DESCRIPTION_LENGTH
  end
end
