class RegistrationsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]

  def new
  end

  def create
    session[:user] = User.new(email: params[:email],
                              password: params[:password])
  end

  def edit
    @user = current_user
  end

  def update
    user = User.find(current_user.id)
    user.attributes.map { |field| params[field] if params[field] }
    user.save
  end
end
