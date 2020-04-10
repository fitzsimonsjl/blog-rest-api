module Api
  module V1
  class CommentsController < ApplicationController
    before_action :set_comment, only: [:show, :update, :destroy]

    # GET /comments
    def index
      @comments = Comment.all

      render json: @comments
    end

    # GET /comments/1
    def show
      render json: @comment
    end

    # POST /comments
    def create
      @comment = Comment.new(comment_params)

      if @comment.save
        render json: { status: 'Success', message: 'Comment has been saved', data: @comment }, status: :ok
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /comments/1
    def update
      @comment = Comment.find(params[:id])
      if @comment.update_attributes(comment_params)
        render json: {status: 'Success', message: 'Comment has been updated', data: @comment}, status: :ok
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end

    # DELETE /comments/1
    def destroy
      @comment.destroy
      render json: {status: 'Success', message: 'Comment has been deleted', data: @comment}, status: :ok
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_comment
        @comment = Comment.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def comment_params
        params.require(:comment).permit(:post_id, :name, :body)
      end

    end
  end
end
