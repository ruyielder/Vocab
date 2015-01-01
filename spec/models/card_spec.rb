require 'rails_helper'

RSpec.describe Card, :type => :model do
  let(:user) {create(:user)}

  it 'has a valid factory' do
    expect(build(:card, user: user)).to be_valid
  end
end
