require 'faker'

FactoryBot.define do
  factory :project do 
    title {  Faker::Book.title }
    content { Faker::Quotes::Shakespeare.hamlet_quote }
  end
end
