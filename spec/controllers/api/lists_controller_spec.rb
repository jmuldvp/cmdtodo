require 'rails_helper'

RSpec.describe Api::ListsController, type: :controller do
  include AuthHelper
  let(:the_user){ FactoryGirl.create(:user, email: "admin@bloc.io")}
  let(:the_list){ FactoryGirl.create(:list, user_id: the_user.id) }
  let(:a_list) { List.create!(name: "testing", user_id: "1000")}

  describe "POST #create" do
    it "returns http success" do
      http_login
      post :create, params: {list: {name: "test"}, user_id: the_user.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE destroy" do
    it "returns HTTP 204 No Content" do
      http_login
      delete :destroy, params: {id: the_list.id, user_id: the_user.id}
      expect(response).to have_http_status(204)
    end
  end

end
