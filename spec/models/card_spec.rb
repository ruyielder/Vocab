require 'rails_helper'

RSpec.describe Card, :type => :model do
  let(:user) {create(:user)}

  it 'has a valid factory' do
    expect(build(:card, user: user)).to be_valid
  end

  it 'is invalid without first value' do
    expect(build(:card, user: user, first: '')).not_to be_valid
  end

  it 'is invalid without second value' do
    expect(build(:card, user: user, second: '')).not_to be_valid
  end

  it 'is invalid with negative negative_count' do
    expect(build(:card, user: user, negative_count: -1)).not_to be_valid
  end

  it 'is invalid with negative positive_count' do
    expect(build(:card, user: user, positive_count: -1)).not_to be_valid
  end

  it 'is invalid with negative positive_percent' do
    expect(build(:card, user: user, positive_percent: -1)).not_to be_valid
  end
end
