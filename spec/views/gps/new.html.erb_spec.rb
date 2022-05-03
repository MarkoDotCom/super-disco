require 'rails_helper'

RSpec.describe "gps/new", type: :view do
  before(:each) do
    assign(:gp, Gp.new(
      longitude: "9.99",
      latitude: "9.99"
    ))
  end

  it "renders new gp form" do
    render

    assert_select "form[action=?][method=?]", gps_path, "post" do

      assert_select "input[name=?]", "gp[longitude]"

      assert_select "input[name=?]", "gp[latitude]"
    end
  end
end
