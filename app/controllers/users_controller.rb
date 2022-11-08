class UsersController < ApplicationController
  def show
    @works_today = Work.where("date = ?", Date.today)
    @works_all = Work.all.order("date")
  end
end
