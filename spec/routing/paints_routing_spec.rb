require "rails_helper"

RSpec.describe PaintsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/paints").to route_to("paints#index")
    end

    it "routes to #show" do
      expect(get: "/paints/1").to route_to("paints#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/paints").to route_to("paints#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/paints/1").to route_to("paints#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/paints/1").to route_to("paints#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/paints/1").to route_to("paints#destroy", id: "1")
    end
  end
end
