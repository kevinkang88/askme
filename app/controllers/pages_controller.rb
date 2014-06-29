class PagesController < ApplicationController

  before_filter :check_session, except: [:about]
  # this is calling check_session method for all actions except :about

  def about
    # this is a public page for everyone
    # session is not checked here
  end

  def main
    # params
    # request
    binding.pry

    @user = User.new
  end

  def test
    # this is a private page for logged in users
  end



end
