FactoryBot.define do
  factory :comment do
    user { nil }
    content { "MyText" }
    img_url { "MyString" }
  end
end
