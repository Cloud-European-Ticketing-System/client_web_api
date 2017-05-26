require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'index' do
    it 'should return user\'s name' do
      get :index
      expect(assigns(:user).name).to eq('Some Fucking Name')
    end
  end
end
