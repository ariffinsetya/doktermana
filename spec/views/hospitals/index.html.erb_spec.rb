require 'rails_helper'

RSpec.describe "hospitals/index", type: :view do
  before(:each) do
    assign(:hospitals, [
      Hospital.create!(
        name: "Name",
        address: "MyText",
        phone: "Phone"
      ),
      Hospital.create!(
        name: "Name",
        address: "MyText",
        phone: "Phone"
      )
    ])
  end

  it "renders a list of hospitals" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Phone".to_s, count: 2
  end
end
