FactoryGirl.define do
  factory :wiki_page do
      content Faker::Lorem::paragraphs(10)
      active true
    end
end
