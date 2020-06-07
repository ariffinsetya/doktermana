require 'rails_helper'

RSpec.describe "users/_form", type: :view do
  let!(:user) { User.new }

  it "renders the edit user form" do
    render 'users/form', user: user
    expect(rendered).to have_selector('input[name=\"user\[name\]\"]')
    expect(rendered).to have_selector('input[name=\"user\[email\]\"]')
    expect(rendered).to have_selector('input[name=\"user\[uid\]\"]')
    expect(rendered).to have_selector('input[name=\"user\[avatar_url\]\"]')
    expect(rendered).to have_selector('select[name=\"user\[type\]\"]')
  end
end
