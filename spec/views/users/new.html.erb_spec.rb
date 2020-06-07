require 'rails_helper'

RSpec.describe "users/new", type: :view do
  let!(:user) { build :user } 
  before(:each) do
    assign(:user, user)
  end

  it "renders new user form" do
    render
    expect(rendered).to render_template 'users/_form'
  end
end
