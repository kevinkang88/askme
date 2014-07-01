class SessionsController < ApplicationController
  def create
      # as of 06/28/04
      # params = {"user_name"=>"kevin", "password"=>"[FILTERED]"}
      #
      # find the user in db based on their username
      # if your name does not exist redirect
      @user = User.find_by_screen_name(params["user_name"])
      if @user
        if @user.password == params[:password]
          session[:id] = @user.id
          redirect_to test_path
        else
          redirect_to root_path
        end
      else
        redirect_to root_path
      end
      # check password
      # if success
      # save user_id to sessions hash
      # if failure redirect
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end



