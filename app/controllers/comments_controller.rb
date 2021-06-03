class CommentsController < ApplicationController
  def create
    @apply = Apply.find(params[:apply_id])
    @comment = Comment.new(comment_params)
    @comment.apply = @apply
    @comment.save
    if @comment.save
      redirect_to apply_path(@apply, anchor: "anchor-comment")
    else
      redirect_to apply_path(@apply)
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
