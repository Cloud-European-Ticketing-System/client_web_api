class UsersController < ApplicationController
  skip_before_action :add_headers

  def show
    @user = current_user
  end
end
