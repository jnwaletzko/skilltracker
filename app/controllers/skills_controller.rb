class SkillsController < ApplicationController
  def new
  end

  def create
    render plain: params[:skill].inspect
  end
end
