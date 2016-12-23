require 'rails_helper'

RSpec.describe List, type: :model do
  let(:my_user) { User.create!(email: "user@bloc.com", password: "password")}
  let(:my_list) { List.create!(name:"grocery", user: my_user)}

  it { is_expected.to have_many(:items) }
  it { is_expected.to validate_presence_of(:name) }

  describe "attributes" do
    it "has name" do
      expect(my_list).to have_attributes( name: my_list.name )
    end
  end

end
