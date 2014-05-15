class CommentsController < ApplicationController


def create
  @comment_params = params.require(:comment).permit(:title, :body, :restaurant_id)
  comment = Comment.create(@comment_params)
  redirect_to restaurant_path(comment.restaurant_id)
end

def destroy
end


end
