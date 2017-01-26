require 'rails_helper'

RSpec.describe Api::ItemsController, type: :controller do
  include AuthHelper
  let(:the_user){ FactoryGirl.create(:user, email: "britt@bloc.io")}
  let(:the_list){ FactoryGirl.create(:list, user_id: the_user.id) }

  describe "POST #create" do
    it "returns http success" do
      http_login
      post :create, params: {item: {name: "test"}, list_id: the_list.id}
      expect(response).to have_http_status(:success)
    end

    # it "increases the count of items by 1" do
    #   expect{post :create, params: {item: {name: "test"}, list_id: the_list.id}}.to change(Item,:count).by(1)
    # end
  end

end
