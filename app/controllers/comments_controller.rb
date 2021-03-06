class CommentsController < ApplicationController
  def edit
  end

  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params[:comment])
  	@comment.user_id = current_user.id 
  	@comment.save
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy
  	redirect_to @comment.post
  end
end
