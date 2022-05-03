require 'rails_helper'

RSpec.describe "gps/edit", type: :view do
  before(:each) do
    @gp = assign(:gp, Gp.create!(
      longitude: "9.99",
      latitude: "9.99"
    ))
  end

  it "renders the edit gp form" do
    render

    assert_select "form[action=?][method=?]", gp_path(@gp), "post" do

      assert_select "input[name=?]", "gp[longitude]"

      assert_select "input[name=?]", "gp[latitude]"
    end
  end
end
