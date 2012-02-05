FactoryGirl.define do
  factory :wiki_page do
      title   {Faker::Lorem::words(2).join(" ")}
      content {Faker::Lorem::paragraphs(10).join("\n")}
      active true
    end
end
