FactoryBot.define do
  factory :post do
    user { nil }
    title { "MyString" }
    content { "MyText" }
    img_url { "MyString" }
  end
end
