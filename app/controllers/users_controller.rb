class UsersController < ApplicationController

  def index
    @user = User.new(name: 'Some Fucking Name')
  end
end
