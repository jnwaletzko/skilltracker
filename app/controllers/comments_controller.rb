class CommentsController < ApplicationController
  def create
    @skill = Skill.find(params[:skill_id])
    @comment = @skill.comments.create(comment_params)
    redirect_to skill_path(@skill)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
