class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.co ments.create(params[:comment].permit(:name, :body))

		redirect_to post_path(@post)
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = Post.comments.find(params[:id])
		@comment.destroy

		redirect_to post_path(@post)
	end
end
