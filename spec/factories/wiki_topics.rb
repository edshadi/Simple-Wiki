FactoryGirl.define do
  factory :wiki_topic do
      title       {Faker::Lorem::words(3).join(' ')}
      description {Faker::Lorem::paragraph}
      after_create do |t|
        5.times{ t.wiki_pages << Factory(:wiki_page) }
      end
    end
end
