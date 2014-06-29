require 'bcrypt'

class User < ActiveRecord::Base
  attr_accessible :screen_name, :password_hash, :first_name, :last_name, :email
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end
end