FactoryBot.define do
    factory :hospital do
        name { Faker::Company.name }
        address { Faker::Address.street_name }
        phone { Faker::PhoneNumber.phone_number }
    end
end