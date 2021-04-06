class PostsController < ApplicationController

  def index
    @posts = Post.order(id: "DESC")
  end

  #今は不要。newは７つのアクションの生成の意味。
  #def new
  #end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index #追記する
  end
end
