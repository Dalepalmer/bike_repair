require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :name }
  it { should validate_presence_of :phone }
  it { should validate_presence_of :password }
  it { should validate_presence_of :password_confirmation }

  before do
    @user = FactoryGirl.build(:user)
  end

  it "gets a uid assigned" do
    @user.save!
    expect(@user.uid).not_to be_blank
  end
end
