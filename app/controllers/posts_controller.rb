class PostsController < ApplicationController

  def index
    @post = Post.order(vote: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post.name = params [:post][:name]
    @post.link = params [:post][:link]
    @post.vote = 1
    redirect_to
  end


  def show
  end






end
