require "rails_helper"

RSpec.describe PaintPigmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/paint_pigments").to route_to("paint_pigments#index")
    end

    it "routes to #show" do
      expect(get: "/paint_pigments/1").to route_to("paint_pigments#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/paint_pigments").to route_to("paint_pigments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/paint_pigments/1").to route_to("paint_pigments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/paint_pigments/1").to route_to("paint_pigments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/paint_pigments/1").to route_to("paint_pigments#destroy", id: "1")
    end
  end
end
