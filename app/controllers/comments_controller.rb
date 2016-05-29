class CommentsController < ApplicationController

def create
comment = Comment.create(comment_params)
comment.post_id = params[:post_id]
if comment.save
redirect_to :back
else
	redirect_to :back
end
end

private

def comment_params
params.require(:comment).permit(:body)
end

end
