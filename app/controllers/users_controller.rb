class UsersController < ApplicationController
  def new

  end
  def create
    @user = User.new(screen_name: params["user"]["screen_name"],
                     first_name: params["user"]["first_name"],
                     last_name: params["user"]["last_name"],
                     email: params["user"]["email"])
    @user.password=(params['user']['password'])
    @user.save
    redirect_to root_path
  end
end