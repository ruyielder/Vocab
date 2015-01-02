require 'rails_helper'

RSpec.describe Box, :type => :model do
  let(:user) {create(:user)}

  it 'has a valid factory' do
    expect(build(:box, user: user)).to be_valid
  end

  it 'is invalid without user' do
    expect(build(:box)).not_to be_valid
  end

  it 'is invalid without title' do
    expect(build(:box, user: user, title: '')).not_to be_valid
  end

  it 'is invalid with not unique title' do
    create(:box, user: user, title: 'Verbs')
    expect(build(:box, user: user, title: 'Verbs')).not_to be_valid
  end
end
