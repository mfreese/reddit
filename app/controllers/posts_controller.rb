class PostsController < ApplicationController

  def index
    @post = Post.order(vote: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.name = params[:post][:name]
    @post.link = params[:post][:link]
    @post.summary = params[:post][:summary]
    @post.vote = 1
    @post.user= params[:post][:user]
    @post.save!
    redirect_to root_path


  end

  def vote
    @post = Post.find(params[:id])
    @post.vote += 1
    @post.save
    redirect_to root_path
  end

  def link_vote
    @post= Post.find(params[:id])
    @post.vote += 1
    @post.save
    redirect_to @post.link
  end



  def show
  end






end
