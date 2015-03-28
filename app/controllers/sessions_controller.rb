class SessionsController < ApplicationController

  def new
  end

def create
  @user = User.authenticate(params[:session][:email], params[:session][:password])
  if @user
    session[:user_id] = @user.id
    redirect_to root_path, notice: "Logged in as #{@user.email}"
  else
    redirect_to log_in_path, alert: "Name or Password is Invalid"
end
end

  def destroy
    session[:user] = nil
    redirect_to root_url, notice: "Signing Out Successfully"
  end

end
