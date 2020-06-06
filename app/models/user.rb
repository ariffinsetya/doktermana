class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  validates :type, :inclusion => {:in => ['Patient','Doctor','Admin']}

  def self.from_google(email:, name:, uid:, avatar_url:)
    create_with(uid: uid, name: name, avatar_url: avatar_url, role: 'general').find_or_create_by!(email: email)
  end
end
