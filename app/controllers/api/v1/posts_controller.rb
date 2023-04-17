module Api
  module V1
    class PostsController < ApplicationController
      before_action :set_post, only: %i[ show update destroy ]
      skip_before_action :authenticate, only: %i[ index ]

      # GET /posts
      def index
        count = params[:limit] || 3 # default to 3 if limit param is not present or not a number
        offset = params[:offset] || 0 # default to 0 if offset param is not present or not a number
        posts = Post.limit(count).offset(offset).order(updated_at: :desc, created_at: :desc)
        render json: posts
      end
      

      def count
        count = params[:limit] || 3 # default to 10 if count param is not present or not a number
        offset = params[:offset]
        posts = Post.limit(count).offset(offset)
        render json: posts
      end

      # GET /posts/1
      def show
        render json: @post
      end

      # POST /posts
      def create
        # @post = Post.new(post_params)

        @post = @current_user.posts.build(post_params)
        @post.username = @current_user.username

        if @post.save
          render json: @post, status: :created
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /posts/1
      def update
        if @post.user == @current_user # check if the current_user is the same as the user who created the post
          if @post.update(post_params) 
            render json: { message: 'Post updated successfully', post: @post }, status: :ok
          else
            render json: @post.errors, status: :unprocessable_entity
          end
        else
          render json: { error: 'Unauthorized' }, status: :unauthorized # if the current_user is not the same as the user who created the post, return an error
        end
      end

      # DELETE /posts/1
      def destroy
        if @post.user_id == @current_user.id
        @post.destroy
        render json: { message: 'Post deleted successfully' }, status: :ok
        else
          render json: @post.errors, status: :unprocessable_entity
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def post_params
        params.require(:post).permit(:user_id, :title, :content, :img_url, :username)
      end
    end
  end
end
