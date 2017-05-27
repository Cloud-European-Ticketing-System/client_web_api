class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate

  private

  def generate_api_token

  end

  def current_user
    session[:user]
  end

  private

  def authenticate
    redirect_to home_path, notice: 'Please login or sign up!' unless current_user
  end
end
