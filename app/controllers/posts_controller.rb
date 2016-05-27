class PostsController < ApplicationController
before_action :find_post, only: [:edit, :update, :show, :destroy] 

  def show
  end

def edit
end

def new
 @post = Post.new
  end

  def index
  @posts = Post.limit(10) 
  end


def destroy
@post.destroy
redirect_to posts_path
end

def update
if @post.update(post_params)
  redirect_to @post
else
  render('edit')
end
end

 def create 
@post = Post.create(post_params)
if @post.save
	redirect_to @post
else
	render('new')
 end
end

private

def find_post
  @post = Post.find(params[:id])
end

def post_params
	params.require(:post).permit(:title, :content)
end

end
