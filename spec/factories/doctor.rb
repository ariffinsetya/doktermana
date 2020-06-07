FactoryBot.define do
    factory :doctor do
        email { Faker::Internet.email }
        name { Faker::Name.name }
        uid { Random.uuid }
        avatar_url { 'http://images.google.com/1.png' }
        password { 123 }
        type { 'Doctor' }
    end
end