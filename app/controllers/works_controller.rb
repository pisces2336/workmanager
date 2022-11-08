class WorksController < ApplicationController
  def new
    @commition = Commition.find(params[:commition_id])
    @work = Work.new
  end

  def create
    @commition = Commition.find(params[:commition_id])
    @work = Work.new(work_params)
    @work.user_id = current_user.id
    @work.commition_id = @commition.id
    if @work.save
      redirect_to commition_path(params[:commition_id])
    else
      render :new
    end
  end

  private
  def work_params
    params.require(:work).permit(:title, :date, :commition_id)
  end
end
