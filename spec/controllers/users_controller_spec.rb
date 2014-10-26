require 'rails_helper'

describe UsersController, type: :controller do
	before :each do
		@user = create(:user, email: "a@test.com", password: "aSuPeRsEcUrEpAsSwOrd")
  end

  # describe "GET #index" do
  #   it "responds successfully with an HTTP 200 status code" do
  #     get :index
  #     expect(response).to be_success
  #     expect(response).to have_http_status(200)
  #   end

  #   it "renders the index template" do
  #     get :index
  #     expect(response).to render_template("index")
  #   end
  # end

  describe "GET #show" do
  	it "responds successfully with an HTTP 200 status code when displaying a user" do
  		login_user_post("a@test.com", "aSuPeRsEcUrEpAsSwOrd")
  		get :show, id: @user
      expect(response).to be_success
      expect(response).to have_http_status(200)
  	end

  	it ""
  end
end