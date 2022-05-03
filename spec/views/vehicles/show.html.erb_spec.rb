require 'rails_helper'

RSpec.describe "vehicles/show", type: :view do
  before(:each) do
    @vehicle = assign(:vehicle, Vehicle.create!(
      vehicle_identifier: "Vehicle Identifier"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Vehicle Identifier/)
  end
end
