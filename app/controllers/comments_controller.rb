class CommentsController < ApplicationController
before_action :find_post, only: [:create, :new]


def new
@comment = Comment.new(:parent_id => params[:parent_id])
end

def create
comment = Comment.create(comment_params)
comment.post_id = params[:post_id]
if comment.save
redirect_to @post
else
render 'new'
end
end

private

def find_post 
@post = Post.find(params[:post_id])
end

def comment_params
params.require(:comment).permit(:body, :parent_id)
end

end
