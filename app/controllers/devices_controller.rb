class DevicesController < ApplicationController
  # remove after login part is done
  skip_before_action :authenticate

  def index
    # GET users/1/devices
    response = Device.collection_path(user_id: current_user.id)

    @devices = response.object if response.code == 200
  end

  def show

  end

  def new

  end

  def create
    response = Device.create(type: params[:type],
                             user_id: current_user.id)

    if response.code == '200'
      return render :index, notice: 'Device successfully added!'
    end

    render :new, alert: 'Bad request.'
  end
end
