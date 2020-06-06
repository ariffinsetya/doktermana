require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      email: "MyString",
      name: "MyString",
      uid: "MyString",
      avatar_url: "MyString",
      integer: ""
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[email]"

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[uid]"

      assert_select "input[name=?]", "user[avatar_url]"

      assert_select "input[name=?]", "user[integer]"
    end
  end
end
