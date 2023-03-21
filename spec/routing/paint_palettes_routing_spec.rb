require "rails_helper"

RSpec.describe PaintPalettesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/paint_palettes").to route_to("paint_palettes#index")
    end

    it "routes to #show" do
      expect(get: "/paint_palettes/1").to route_to("paint_palettes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/paint_palettes").to route_to("paint_palettes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/paint_palettes/1").to route_to("paint_palettes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/paint_palettes/1").to route_to("paint_palettes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/paint_palettes/1").to route_to("paint_palettes#destroy", id: "1")
    end
  end
end
