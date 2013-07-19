require "spec_helper"

describe UsersController do
  describe "GET index" do
     before(:each) do
      get :index
      end
        it "should render the index template" do
      response.should render_template(:index)
    end
  end
end