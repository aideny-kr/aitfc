require 'spec_helper'

describe SocialConnection do

  describe "validation" do
    subject{ build(:social_connection) }
    it{ should be_valid }
    it "should require a user" do
      build(:social_connection, user: nil).should_not be_valid
    end
    it "should require a provider" do
      build(:social_connection, provider: nil).should_not be_valid
    end
    it "should require a uid" do
      build(:social_connection, uid: nil).should_not be_valid
    end
  end

  describe "associations" do
    it "should be present on user" do
      build(:user).respond_to?(:social_connections).should == true
    end
  end

  describe "Facebook" do
    let(:user){ create(:user) }

    describe "interface" do
      subject{ FacebookInterface.for(user) }
      it {should_not be_nil}
      it {should be_a(FacebookInterface::StubInterface)}
    end

    describe "usage" do
      let(:fbi){ FacebookInterface.for(user) }
    end
  end

end