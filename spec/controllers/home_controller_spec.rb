require 'rails_helper'

RSpec.describe HomeController do

  describe 'GET #index' do
    context 'when not logged in' do
      before { get :index }
      it { expect(response).to redirect_to(new_user_session_path) }
    end

    context 'when logged in' do
      before do
        sign_in FactoryGirl.create(:user)
        get :index
      end
      it { expect(response).to render_template('index') }
    end
  end
end
