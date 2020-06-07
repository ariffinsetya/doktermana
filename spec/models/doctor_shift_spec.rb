require 'rails_helper'

RSpec.describe DoctorShift, type: :model do
  describe 'ActiveRecord Associations' do
    it { should belong_to :doctor }
  end
end
