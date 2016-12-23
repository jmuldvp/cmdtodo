require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:my_user) { User.create!(email: "user@bloc.com", password: "password")}
  let(:my_list) { List.create!(name:"grocery", user: my_user)}
  let(:my_item) { Item.create!(name:"apple", list: my_list)}

  it { is_expected.to belong_to(:list) }
  it { is_expected.to validate_presence_of(:name) }

  describe "attributes" do
    it "has name" do
      expect(my_item).to have_attributes( name: my_item.name )
    end
  end
end
