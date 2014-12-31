require 'rails_helper'

RSpec.describe User, :type => :model do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  it 'is invalid without username' do
    expect(build(:user, username: nil)).not_to be_valid
  end

  it 'is invalid with too short username (less than 3)' do
    expect(build(:user, username: 'rx')).not_to be_valid
  end

  it 'is invalid with too long username (greater than 20)' do
    expect(build(:user, username: 'a' * 21)).not_to be_valid
  end

  it 'is invalid with white characters in username' do
    expect(build(:user, username: 'javascript ninja')).not_to be_valid
  end

  it 'is invalid with special characters in username' do
    expect(build(:user, username: 'm!l,k@')).not_to be_valid
  end

  it 'is invalid with polish characters in username' do
    expect(build(:user, username: 'żółć')).not_to be_valid
  end

  it 'is invalid with only digits' do
    expect(build(:user, username: '12345')).not_to be_valid
  end

  it 'is invalid with digits prefix' do
    expect(build(:user, username: '42user')).not_to be_valid
  end

  it 'has unique (case insensitive) username' do
    create(:user, username: 'NiceUser')
    expect(build(:user, username: 'niceUSER')).not_to be_valid
  end

  it 'is invalid without email' do
    expect(build(:user, email: nil)).not_to be_valid
  end

  it 'is invalid with too short email (less than 8)' do
    expect(build(:user, email: 'a@a.com')).not_to be_valid
  end
  
  it 'is invalid with too long email (greater than 150)' do
    expect(build(:user, email: "#{'a' * 145}@a.com")).not_to be_valid
  end

  it 'has unique (case insensitive) email' do
    create(:user, email: 'NiceUser@example.local')
    expect(build(:user, email: 'niceUSER@example.Local')).not_to be_valid
  end

  it 'is invalid without password' do
    expect(build(:user, password: nil)).not_to be_valid
  end

  it 'is invalid with too short password (less than 8)' do
    expect(build(:user, password: '123Gala')).not_to be_valid
  end

  it 'is invalid with too long password (greater than 128)' do
    expect(build(:user, password: "123G#{'a' * 125}")).not_to be_valid
  end
end
