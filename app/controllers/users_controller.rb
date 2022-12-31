class UsersController < ApplicationController
  def show
    @works_today = Work.where("date <= ?", Date.today).order("title").order("date")
    @works_all = Work.all.order("title").order("date")
  end
end
