FactoryGirl.define do
  factory :wiki do
      homepage "MyString"
      active false
      wiki_topics { [Factory(:wiki_topic)] }
    end
end
