class UsersController < ApplicationController

  def new
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      Account.create(:user_id => user.id)
      flash[:notice] = 'Thanks for creating an account! Add an Item to your Cart by clicking it below.'
      redirect_to '/'
    else
      redirect_to '/sign_up'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :first_name, :last_name, :username)
  end

end
