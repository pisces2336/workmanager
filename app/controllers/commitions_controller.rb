class CommitionsController < ApplicationController
  before_action :commition_auth, except: [:index, :new, :create]

  def index
    @commitions = Commition.where(user_id: current_user.id)
  end

  def show
    @commition = Commition.find(params[:id])
    @works = Work.where(commition: @commition).order("date")
    if @commition.user_id != current_user.id
      redirect_to user_path(current_user)
    end
  end

  def new
    @commition = Commition.new
  end

  def create
    @commition = Commition.new(commition_params)
    @commition.user_id = current_user.id
    if @commition.save
      redirect_to commition_path(@commition)
    else
      render :new
    end
  end

  def edit
    @commition = Commition.find(params[:id])
    if @commition.user_id != current_user.id
      redirect_to user_path(current_user)
    end
  end

  def update
    @commition = Commition.find(params[:id])
    if @commition.update(commition_params)
      redirect_to commition_path(@commition)
    else
      render :edit
    end
  end

  def destroy
    commition = Commition.find(params[:id])
    commition.destroy
    redirect_to user_path
  end

  private
  def commition_params
    params.require(:commition).permit(
      :id, :user_id, :name, :twitter, :early_submit,
      :use_sample, :payment_method, :price, :paid, :document_link
    )
  end

  def commition_auth
    commition = Commition.find(params[:id])
    if commition.user_id != current_user.id
      redirect_to user_path(current_user)
    end
  end
end
