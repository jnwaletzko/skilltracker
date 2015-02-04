class CommentsController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

  def create
    @skill = Skill.find(params[:skill_id])
    @comment = @skill.comments.create(comment_params)
    redirect_to skill_path(@skill)
  end

  def destroy
    @skill = Skill.find(params[:skill_id])
    @comment = @skill.comments.find(params[:id])
    @comment.destroy
    redirect_to skill_path(@skill)
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
