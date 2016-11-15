class PostsController < ApplicationController
  def index
    # @posts = Post.where("priority = #{params[:priority]}")
    # @posts = Post.where("priority = ?", params[:priority])
    # @posts = Post.where(priority: params[:priority])
    @posts = Post.low
  end
end
