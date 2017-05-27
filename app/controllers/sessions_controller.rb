class SessionsController < ApplicationController
  skip_before_action :authenticate

  def new
    redirect_to :root_path,
                alert: "Already logged in with #{current_user.email}" if current_user

  end

  def create
    session[:user] = Auth.find(email: params[:email],
                               password: params[:password])
  end
end
