require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      email: "MyString",
      name: "MyString",
      uid: "MyString",
      avatar_url: "MyString",
      integer: ""
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[uid]"

      assert_select "input[name=?]", "user[avatar_url]"

      assert_select "input[name=?]", "user[integer]"
    end
  end
end
