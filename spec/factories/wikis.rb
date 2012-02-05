FactoryGirl.define do
  factory :wiki do
    name     {Faker::Lorem::words(2).join(' ')}
    homepage {Faker::Lorem::paragraphs(3).join("\n")}
    after_create do |w|
      10.times {w.wiki_topics << Factory(:wiki_topic)}
    end
  end
end
