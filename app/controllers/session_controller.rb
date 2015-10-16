class SessionController < ApplicationController
  def new
  end

  def create
    u = User.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      redirect_to to_dos_path, notice: "You have been successfully logged in!"
      session[:user_id] = u.id
    else
      redirect_to session_new_pat, notice: "Invalid user email or password!"
    end  
  end

  def destroy
  end
end
