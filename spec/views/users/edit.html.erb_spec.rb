require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  let!(:user) { create :user }
  before(:each) do
    assign(:user, user)
  end

  it "renders edit user form" do
    render
    expect(rendered).to render_template 'users/_form'
  end
end
