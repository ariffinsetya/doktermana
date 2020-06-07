require 'rails_helper'

RSpec.describe Hospital, type: :model do
  describe 'ActiveRecord Associations' do
    it { should have_many(:employments) }
    it { should have_many(:doctors).through(:employments) }
  end
end
