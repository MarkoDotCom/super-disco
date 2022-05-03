require 'rails_helper'

RSpec.describe "gps/index", type: :view do
  before(:each) do
    assign(:gps, [
      Gp.create!(
        longitude: "9.99",
        latitude: "9.99"
      ),
      Gp.create!(
        longitude: "9.99",
        latitude: "9.99"
      )
    ])
  end

  it "renders a list of gps" do
    render
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
  end
end
