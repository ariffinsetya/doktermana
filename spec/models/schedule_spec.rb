require 'rails_helper'

RSpec.describe Schedule, type: :model do
  describe 'ActiveRecord Association' do
    it { should belong_to :doctor }
    it { should have_many(:scheduled_appointments) }
    it { should have_many(:patients).through(:scheduled_appointments) }
  end
  
  describe '#from_shift' do
    let!(:doctor_shift) { create :doctor_shift } 
    it 'create new schedule' do
      count = Schedule.all.count
      schedule = Schedule.from_shift(DateTime.now, doctor_shift)
      expect(Schedule.all.count > count).to eq true
      expect(Schedule.all.count).to eq 1
    end

    it 'return existing schedule if exists' do
      count = Schedule.all.count
      old_schedule = Schedule.from_shift(DateTime.now, doctor_shift)
      new_schedule = Schedule.from_shift(DateTime.now, doctor_shift)
      expect(Schedule.all.count > count).to eq true
      expect(Schedule.all.count).to eq 1
      expect(old_schedule).to eq (new_schedule)
    end
  end
end
