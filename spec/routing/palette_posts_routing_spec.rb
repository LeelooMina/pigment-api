require "rails_helper"

RSpec.describe PalettePostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/palette_posts").to route_to("palette_posts#index")
    end

    it "routes to #show" do
      expect(get: "/palette_posts/1").to route_to("palette_posts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/palette_posts").to route_to("palette_posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/palette_posts/1").to route_to("palette_posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/palette_posts/1").to route_to("palette_posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/palette_posts/1").to route_to("palette_posts#destroy", id: "1")
    end
  end
end
