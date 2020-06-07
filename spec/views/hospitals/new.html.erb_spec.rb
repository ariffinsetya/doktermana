require 'rails_helper'

RSpec.describe "hospitals/new", type: :view do
  let!(:hospital) { build :hospital }
  before(:each) do
    assign(:hospital, hospital)
    end

  it "renders new hospital form" do
    render
    expect(rendered).to render_template 'hospitals/_form'
  end
end
