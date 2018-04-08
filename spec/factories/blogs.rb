FactoryBot.define do
  sequence :inq_title do |i|
    "title #{i}"
  end

  factory :blog do
    title { generate :inq_title }
    word "MyText"
    writer "MyString"
  end
end
