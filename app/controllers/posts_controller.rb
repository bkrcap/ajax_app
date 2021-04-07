class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #今は不要。newは７つのアクションの生成の意味。
  #def new
  #end

  def create
    post = Post.create(content: params[:content])
    render json:{ post: post }
  end
end
