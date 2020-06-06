require 'rails_helper'

RSpec.describe "hospitals/new", type: :view do
  before(:each) do
    assign(:hospital, Hospital.new(
      name: "MyString",
      address: "MyText",
      phone: "MyString"
    ))
  end

  it "renders new hospital form" do
    render

    assert_select "form[action=?][method=?]", hospitals_path, "post" do

      assert_select "input[name=?]", "hospital[name]"

      assert_select "textarea[name=?]", "hospital[address]"

      assert_select "input[name=?]", "hospital[phone]"
    end
  end
end
