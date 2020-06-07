require 'rails_helper'

RSpec.describe ScheduledAppointment, type: :model do
  describe 'ActiveRecord Associations' do
    it { should belong_to :doctor }
    it { should belong_to :patient }
    it { should belong_to :schedule }
  end
end
