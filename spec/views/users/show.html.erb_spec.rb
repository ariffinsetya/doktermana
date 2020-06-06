require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: "Email",
      name: "Name",
      uid: "Uid",
      avatar_url: "Avatar Url",
      integer: ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Uid/)
    expect(rendered).to match(/Avatar Url/)
    expect(rendered).to match(//)
  end
end
