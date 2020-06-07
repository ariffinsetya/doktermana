require 'rails_helper'

RSpec.describe "users/index", type: :view do
  let!(:users) { create_list :user, 3 }
  before(:each) do
    assign(:users, users)
  end

  it "renders a list of users" do
    render
    users.each do |ds|
      expect(rendered).to have_text(ds.name)
      expect(rendered).to have_text(ds.email)
      expect(rendered).to have_text(ds.type)
    end
  end
end
