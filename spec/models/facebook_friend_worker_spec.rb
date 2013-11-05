require 'spec_helper'

describe FacebookFriendWorker do

  subject{ FacebookFriendWorker.new }

  it "should include the line 'include Sidekiq::Worker'" do
    subject.respond_to?(:jid).should == true
  end

  context "when processing friends" do

    before(:each) do
      @user = create(:user)
    end

    it "should save all friends" do
      lambda{ subject.perform(@user.id) }.should change(SocialConnection, :count).by(6)
    end

    context  "attribute saving" do
      before(:each) do
        subject.perform(@user.id)
        @friend = SocialConnection.where(uid: "1905046").first
      end

      it "should store uid" do
        @friend.should_not be_nil
      end

      it "should save provider" do
        @friend.provider.should == "facebook"
      end

      it "should store name" do
        @friend.name.should == "Joel Bonasera"
      end

      it "should be bidirectional" do
        @friend.follower.should == true
        @friend.follows.should == true
      end

    end
  end

end