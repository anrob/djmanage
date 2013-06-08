class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
     before_filter :set_current_user
     before_filter :setactcode
  protect_from_forgery

  def set_current_user
        User.current = current_user
  end

  def setactcode
     if user_signed_in?
    @myactcode = current_user.act_code
  end
  end
end
