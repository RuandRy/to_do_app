class SessionController < ApplicationController
  def new
  end

  def create
    u = User.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      redirect_to to_dos_path, notice: "You have been successfully logged in!"
      session[:user_id] = u.id
    else
      redirect_to session_new_path, notice: "Invalid user email or password!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to session_new_path, notice: "You have been logged out!"

  end
end
