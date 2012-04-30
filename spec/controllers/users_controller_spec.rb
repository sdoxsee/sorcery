require 'spec_helper'

describe UsersController do
  
  describe "GET 'new'" do
    it "assigns user to object" do
      get 'new'
      assigns(:user).should_not be_nil
    end
  end
  describe "POST 'create'" do
    before(:each) do
      @user = mock_model(User)
      User.should_receive(:new).and_return(@user)
    end
    it "saves new user" do
      @user.stub!(:save).and_return(@user)
      post 'create'
      flash.now[:notice].should_not be_nil
    end
    it "fails to save new user" do
      @user.stub!(:save).and_return(nil)
      post 'create'
      flash.now[:alert].should_not be_nil
    end
  end
  
end
