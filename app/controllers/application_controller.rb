class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :api_token

  private

  def generate_api_token

  end
end
