class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :admin
  helper_method :current_order

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def admin
    current_user && current_user.admin
  end

  def current_order
    if session[:order_id]
      Order.find(session[:order_id])
    else
      if current_user
        if Order.where(:account_id => current_user.id, :status => 1).any?
          x = Order.where(:account_id => current_user.id, :status => 1)
          Order.find(x.first.id)
        else
          Order.new(:account_id => current_user.account.id)
        end
      else
        Order.new
      end
    end
  end

  def authorize
    redirect_to '/sign_in' unless admin
  end
end
