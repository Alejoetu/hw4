class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user["username"] = params["user"]["username"]
    @user["email"] = params["user"]["email"]
    @user["password"] = BCrypt::Password.create(params["user"]["password"])
    session["user_id"] = @user["id"]
    @user.save
    flash["notice"] = "Welcome to Trusty Traveler! Now, you need to login."
    redirect_to "/login"
  end
end
