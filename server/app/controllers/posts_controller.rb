class PostsController < ApplicationController

  def index
    render json: Post.all, except: [:body, :comments]
  end

  def show
    render json: Post.find(params[:id])
  end

end
