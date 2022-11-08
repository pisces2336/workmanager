class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:top]

  def after_sign_in_path_for(resource)
    user_path
  end

  def after_sign_out_path_for(resource)
    root_path
  end
end
