require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        email: "Email",
        name: "Name",
        uid: "Uid",
        avatar_url: "Avatar Url",
        integer: ""
      ),
      User.create!(
        email: "Email",
        name: "Name",
        uid: "Uid",
        avatar_url: "Avatar Url",
        integer: ""
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Uid".to_s, count: 2
    assert_select "tr>td", text: "Avatar Url".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
