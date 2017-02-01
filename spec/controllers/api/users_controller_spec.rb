require 'rails_helper'

RSpec.describe Api::UsersController, type: :controller do
  include AuthHelper
  let(:my_user) {User.create!(email: "test@test.com", password: "pas123")}

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

  describe "DELETE destroy" do
    it "returns HTTP 204 No Content" do
      http_login
      delete :destroy, id: my_user.id
      expect(response).to have_http_status(204)
    end
  end

end
