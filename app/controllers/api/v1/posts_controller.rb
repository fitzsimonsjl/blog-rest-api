module Api
  module V1
class PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

    # GET /posts
    def index
      @posts = Post.all

      render json: @posts
    end

    # GET /posts/1
    def show
      render json: @post
    end

    # POST /posts
    def create
      @post = Post.new(post_params)

      if @post.save
        render json: { status: 'Success', message: 'Post has been saved', data: @post }, status: :ok
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /posts/1
    def update
      @post = Post.find(params[:id])
      if @post.update_attributes(post_params)
        render json: {status: 'Success', message: 'Post has been updated', data: @post}, status: :ok
      else
        render json: @post.errors, status: :unprocessable_entity
      end
    end

    # DELETE /posts/1
    def destroy
      @post.destroy
      render json: {status: 'Success', message: 'Post has been deleted', data: @post}, status: :ok
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def post_params
        params.require(:post).permit(:title, :body)
      end

    end
  end
end
