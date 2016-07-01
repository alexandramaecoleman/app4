require 'rails_helper'

describe UsersController, type: :controller do

  before do
    # @user = User.create!(email: "benclarke018@gmail.com", password: "testpassed123")
    # @user1 = User.create!(email: "ben@upliftingmedia.co.uk", password: "timeforatest")
    # @user = User.create!(email: "alexandramaecoleman@gmail.com", password: "alxy25")
    # @user1 = User.create!(email: "alexandramaecolema1@gmail.com", password: "alxy25")
    # @user2 = User.create!(email: "alexandramaecoleman2@gmail.com", password: "alxy25")
    @user = FactoryGirl.create(:user)
  end


  describe "GET #show" do
    
    context "User is logged in" do
      before do
        it "loads the correct user details" do
          expect(response).to have_http_status(200)
          expect(assign(:user)).to eq @user
        end
      end
    end

    context "No user is logged in" do
      it "redirects to login" do
        get :show, id: @user.id
        expect(response).to redirect_to("/users/sign_in")
      end
    end

    context "cannot access second user show page" do
      it "redirects to login" do
        get :show, id: @user1.id
        expect(response).to have_http_status(302)
        expect(response).to redirect_to("/users/sign_in")
      end
    end
  end
 
end