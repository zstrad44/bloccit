class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each do |post|
      if post.id == 0 || (post.id%5) == 1
        post.title = "SPAM"
      end
    end
  end

  def show

  end

  def new
  end

  def edit
  end

end

#The first post and every 5th post should have the title: spam
