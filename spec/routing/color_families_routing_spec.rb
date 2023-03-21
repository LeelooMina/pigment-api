require "rails_helper"

RSpec.describe ColorFamiliesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/color_families").to route_to("color_families#index")
    end

    it "routes to #show" do
      expect(get: "/color_families/1").to route_to("color_families#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/color_families").to route_to("color_families#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/color_families/1").to route_to("color_families#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/color_families/1").to route_to("color_families#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/color_families/1").to route_to("color_families#destroy", id: "1")
    end
  end
end
