class ApplicationController < ActionController::Base
  protect_from_forgery
    def check_session
    # if I am coming from "/"
    # binding.pry # pause here
    if request.env["PATH_INFO"] == "/"
      redirect_to test_path if session[:id]
    else
      # if I am on /TEST or any other private page
       if session[:id]
        @user = User.find(session[:id])
      else
        redirect_to root_path

      end
    end
  end
end
