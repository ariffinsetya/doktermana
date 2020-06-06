require 'rails_helper'

RSpec.describe "hospitals/show", type: :view do
  before(:each) do
    @hospital = assign(:hospital, Hospital.create!(
      name: "Name",
      address: "MyText",
      phone: "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Phone/)
  end
end
