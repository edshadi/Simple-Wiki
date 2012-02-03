FactoryGirl.define do
  factory :wiki_topic do
      title "MyString"
      wiki_pages {[Factory(:wiki_page)]}
    end
end
