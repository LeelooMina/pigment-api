require "rails_helper"

RSpec.describe SwatchesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/swatches").to route_to("swatches#index")
    end

    it "routes to #show" do
      expect(get: "/swatches/1").to route_to("swatches#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/swatches").to route_to("swatches#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/swatches/1").to route_to("swatches#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/swatches/1").to route_to("swatches#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/swatches/1").to route_to("swatches#destroy", id: "1")
    end
  end
end
