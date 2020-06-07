FactoryBot.define do
    factory :doctor_shift do
        doctor
        start_hour { 9 }
        start_min { 30 }
        end_hour { 12 }
        end_min { 30 }
    end
end