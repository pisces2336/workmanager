class WorksController < ApplicationController
  before_action :work_auth, except: [:new, :create]

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

  def edit
    @work = Work.find(params[:id])
    @commition = @work.commition
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to commition_path(params[:commition_id])
    else
      render :edit
    end
  end

  def destroy
    work = Work.find(params[:id])
    commition = work.commition
    work.destroy
    redirect_to commition_path(commition)
  end

  private
  def work_params
    params.require(:work).permit(:title, :date, :memo, :commition_id)
  end

  def work_auth
    work = Work.find(params[:id])
    if work.user_id != current_user.id
      redirect_to user_path(current_user)
    end
  end
end
