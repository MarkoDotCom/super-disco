require "rails_helper"

RSpec.describe GpsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/gps").to route_to("gps#index")
    end

    it "routes to #new" do
      expect(get: "/gps/new").to route_to("gps#new")
    end

    it "routes to #show" do
      expect(get: "/gps/1").to route_to("gps#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/gps/1/edit").to route_to("gps#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/gps").to route_to("gps#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/gps/1").to route_to("gps#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/gps/1").to route_to("gps#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/gps/1").to route_to("gps#destroy", id: "1")
    end
  end
end
