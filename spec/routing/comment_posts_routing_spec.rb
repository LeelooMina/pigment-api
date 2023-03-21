require "rails_helper"

RSpec.describe CommentPostsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/comment_posts").to route_to("comment_posts#index")
    end

    it "routes to #show" do
      expect(get: "/comment_posts/1").to route_to("comment_posts#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/comment_posts").to route_to("comment_posts#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/comment_posts/1").to route_to("comment_posts#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/comment_posts/1").to route_to("comment_posts#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/comment_posts/1").to route_to("comment_posts#destroy", id: "1")
    end
  end
end
