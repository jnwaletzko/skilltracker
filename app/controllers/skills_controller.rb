class SkillsController < ApplicationController
  def show
    @skill = Skill.find(params[:id])
  end

  def new
  end

  def create
    @skill = Skill.new(skill_params)

    @skill.save
    redirect_to @skill
  end

  private
    def skill_params
      params.require(:skill).permit(:title, :description)
    end
end
