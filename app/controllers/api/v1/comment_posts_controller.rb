class CommentPostsController < ApplicationController
  before_action :set_comment_post, only: %i[ show update destroy ]

  # GET /comment_posts
  def index
    @comment_posts = CommentPost.all

    render json: @comment_posts
  end

  # GET /comment_posts/1
  def show
    render json: @comment_post
  end

  # POST /comment_posts
  def create
    @comment_post = CommentPost.new(comment_post_params)

    if @comment_post.save
      render json: @comment_post, status: :created, location: @comment_post
    else
      render json: @comment_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comment_posts/1
  def update
    if @comment_post.update(comment_post_params)
      render json: @comment_post
    else
      render json: @comment_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comment_posts/1
  def destroy
    @comment_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment_post
      @comment_post = CommentPost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_post_params
      params.require(:comment_post).permit(:post_id, :comment_id)
    end
end
