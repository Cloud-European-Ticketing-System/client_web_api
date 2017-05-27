class RegistrationsController < ApplicationController
  skip_before_action :authenticate, only: [:new, :create]

  def new
  end

  def create
    response = User.create(email: params[:email],
                              password: params[:password])

    if response.code == '200'
      session[:user] = response.object
      return redirect_to sessions_path(params: params, method: :post)
    end

    render :new, alert: 'Bad request.'
  end

  def edit
    @user = current_user
  end

  def update
    user = User.find(current_user.id)
    user.attributes.each { |key, _value| user.attributes[key] = params[key] if params[key] }

    return render :edit, alert: "#{user.errors.messages}" unless user.valid?
    response = user.save

    if response.code == '200'
      session[:user] = response.object
      return redirect_to users_path, notice: 'Account updated!'
    else
      render :edit, alert: 'Bad request.'
    end
  end
end
