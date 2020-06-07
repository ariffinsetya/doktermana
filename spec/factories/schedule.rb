FactoryBot.define do
    factory :schedule do
        start_time { 2.hours.after }
        end_time { 4.hours.after }
        doctor
    end
end