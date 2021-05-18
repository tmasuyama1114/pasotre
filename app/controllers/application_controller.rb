class ApplicationController < ActionController::Base

<<<<<<< HEAD
  include SessionsHelper

  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
=======
end
>>>>>>> d276ea1578c363de678e90761725bc32bf652c4f
