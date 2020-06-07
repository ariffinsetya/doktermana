FactoryBot.define do
    factory :user do
        email { Faker::Internet.email }
        name { Faker::Name.name }
        uid { Random.uuid }
        avatar_url { 'http://images.google.com/1.png' }
        password { 123 }
        type { 'Patient' }

        trait :doctor do
            type { 'Doctor' }
        end

        trait :patient do
            type { 'Patient' }
        end

        trait :admin do
            type { 'Admin' }
        end
    end
end