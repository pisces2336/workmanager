class UsersController < ApplicationController
  def show
    @works = Work.where("date >= ?", Date.today)
  end
end
