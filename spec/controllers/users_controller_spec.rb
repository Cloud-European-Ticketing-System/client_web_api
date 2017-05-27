require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'show' do
    it 'returns empty user' do
      get :show
      expect(assigns(:user)).to be nil
    end

    it 'returns a predefined string' do
      session[:user] = 'predefined user'
      get :show
      expect(assigns(:user)).to eq 'predefined user'
    end
  end
end
