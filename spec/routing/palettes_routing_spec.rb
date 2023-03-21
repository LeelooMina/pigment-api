require "rails_helper"

RSpec.describe PalettesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/palettes").to route_to("palettes#index")
    end

    it "routes to #show" do
      expect(get: "/palettes/1").to route_to("palettes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/palettes").to route_to("palettes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/palettes/1").to route_to("palettes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/palettes/1").to route_to("palettes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/palettes/1").to route_to("palettes#destroy", id: "1")
    end
  end
end
