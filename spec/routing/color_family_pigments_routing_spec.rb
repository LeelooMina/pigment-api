require "rails_helper"

RSpec.describe ColorFamilyPigmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/color_family_pigments").to route_to("color_family_pigments#index")
    end

    it "routes to #show" do
      expect(get: "/color_family_pigments/1").to route_to("color_family_pigments#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/color_family_pigments").to route_to("color_family_pigments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/color_family_pigments/1").to route_to("color_family_pigments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/color_family_pigments/1").to route_to("color_family_pigments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/color_family_pigments/1").to route_to("color_family_pigments#destroy", id: "1")
    end
  end
end
