require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do
  include AuthHelper

  describe "GET #index" do
    it "returns http success" do
      http_login
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "returns http success" do
      http_login
      post :create, params: {user: {email: "user3@user.com", password: "pas123"}}
      expect(response).to have_http_status(:success)
    end
  end

end
