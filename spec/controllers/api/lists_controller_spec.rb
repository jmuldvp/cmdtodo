require 'rails_helper'

RSpec.describe Api::ListsController, type: :controller do
  include AuthHelper
  let(:the_user){ FactoryGirl.create(:user, email: "britt@bloc.io")}
  let(:the_list){ FactoryGirl.create(:list, user_id: the_user.id) }

  describe "POST #create" do
    it "returns http success" do
      http_login
      post :create, params: {list: {name: "test"}, user_id: the_user.id}
      expect(response).to have_http_status(:success)
    end
  end
end
