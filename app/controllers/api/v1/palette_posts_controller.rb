class PalettePostsController < ApplicationController
  before_action :set_palette_post, only: %i[ show update destroy ]

  # GET /palette_posts
  def index
    @palette_posts = PalettePost.all

    render json: @palette_posts
  end

  # GET /palette_posts/1
  def show
    render json: @palette_post
  end

  # POST /palette_posts
  def create
    @palette_post = PalettePost.new(palette_post_params)

    if @palette_post.save
      render json: @palette_post, status: :created, location: @palette_post
    else
      render json: @palette_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /palette_posts/1
  def update
    if @palette_post.update(palette_post_params)
      render json: @palette_post
    else
      render json: @palette_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /palette_posts/1
  def destroy
    @palette_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palette_post
      @palette_post = PalettePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def palette_post_params
      params.require(:palette_post).permit(:palette_id, :post_id)
    end
end
