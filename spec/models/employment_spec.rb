require 'rails_helper'

RSpec.describe Employment, type: :model do
  describe 'ActiveRecord Associations' do
    it { should belong_to :doctor }
    it { should belong_to :hospital }
  end
end
