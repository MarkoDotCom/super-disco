require 'rails_helper'

RSpec.describe "gps/show", type: :view do
  before(:each) do
    @gp = assign(:gp, Gp.create!(
      longitude: "9.99",
      latitude: "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
  end
end
