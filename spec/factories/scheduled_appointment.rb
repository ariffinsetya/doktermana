FactoryBot.define do
    factory :scheduled_appointment do
        schedule
        doctor { schedule.doctor }
        patient
    end
end