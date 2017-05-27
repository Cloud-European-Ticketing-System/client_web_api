class SubscriptionsController < ApplicationController

  def index
    response = Subscription.collection_path(user_id: current_user.id)

    @subscriptions = response.object if response.code == 200
  end

  def new
  end

  def create
    response = Subscription.new(subscription_plan_id: params[:subscription_plan_id],
                                user_id: current_user.id,
                                payment_id: params[:payment_id])

    if response.code == '200'
      return render :index, notice: 'Subscription successfully created!'
    end

    render :new, alert: 'Bad request.'
  end

  def show
  end

  def edit
    response = Subscription.find(params[:id])
    @subscription = response.object if response.code = 200

    render :edit, alert: 'Bad request.'
  end

  def update
  end
end
