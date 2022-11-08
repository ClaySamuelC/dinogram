class CommentsController < ApplicationController
  def create
    @dinopost = Dinopost.find(params[:dinopost_id])
    @comment = @dinopost.comments.create(comment_params)
    
    redirect_to dinopost_path(@dinopost)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
