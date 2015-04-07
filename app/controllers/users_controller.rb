class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "Created Account for #{@user.name}"
    else
      render 'new'
    end
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_url, notice: "Updated Successfully"
    else
      render 'edit', notice: "Failed to Update"
    end
  end



private

  def user_params
    params.require(:user).permit(:name, :email, :phone, :password, :password_confirmation)
  end

end
