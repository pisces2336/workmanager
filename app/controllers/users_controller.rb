class UsersController < ApplicationController
  def show
    @works_today = Work.where("date <= ?", Date.today).order("date").order("title")
    @works_all = Work.all.order("date").order("title")
  end
end
