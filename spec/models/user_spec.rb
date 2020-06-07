require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ActiveRecord Validations' do
    it 'validates type' do
      expect(User.new(uid: '213', email: '212@gmail.com', password: '22222222')).not_to be_valid
    end
  end

  describe '#from_google' do
    it 'create new user from google oauth' do
      count = User.all.count
      User.from_google(email: 'gasd@gmail.com', name: 'gasd', uid: 'random-uid', avatar_url: 'avatar-url')
      expect(User.all.count).to eq 1
      expect(User.all.count > count).to eq true
    end

    it 'return user if already exists in database' do
      user = create :user, email: 'ema@gmail.com'
      user_new = User.from_google(email: 'ema@gmail.com', name: 'emaema', uid: 'random-uid', avatar_url: 'avatar-url')
      expect(user_new.email).to eq user.email
      expect(user_new.id).to eq user.id
    end
  end
end
