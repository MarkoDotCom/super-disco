require 'rails_helper'

RSpec.describe "vehicles/index", type: :view do
  before(:each) do
    assign(:vehicles, [
      Vehicle.create!(
        vehicle_identifier: "Vehicle Identifier"
      ),
      Vehicle.create!(
        vehicle_identifier: "Vehicle Identifier"
      )
    ])
  end

  it "renders a list of vehicles" do
    render
    assert_select "tr>td", text: "Vehicle Identifier".to_s, count: 2
  end
end
