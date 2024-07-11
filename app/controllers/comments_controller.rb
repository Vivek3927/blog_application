class CommentsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_params, only: [:create]

	def create
		@comment = @post.comments.create(comment_params)
		redirect_to post_path(@post)
	end

	private

	def set_params
		@post = Post.find(params[:post_id])
	end

	def comment_params
		params.require(:comment).permit(:name, :text)
	end
end
