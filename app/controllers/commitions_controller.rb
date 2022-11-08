class CommitionsController < ApplicationController
  def index
    @commitions = Commition.all
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

  private
  def commition_params
    params.require(:commition).permit(
      :id, :user_id, :name, :twitter, :early_submit,
      :use_sample, :payment_method, :price, :paid
    )
  end
end
