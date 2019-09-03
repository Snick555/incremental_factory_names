require 'spec_helper'

describe 'IncrementalFactoryNames' do
  context 'simple' do
    let(:user1) { build(:user) }
    let(:user2) { build(:user) }

    it { expect(user1.nickname).to eq('User 001') }
    it { expect(user2.nickname).to eq('User 002') }
  end

  context 'with name' do
    let(:user1) { build(:user, :with_name) }
    let(:user2) { build(:user, :with_name) }

    it { expect(user1.nickname).to eq('Nickname 001') }
    it { expect(user2.nickname).to eq('Nickname 002') }
  end

  context 'with length' do
    let(:user1) { build(:user, :with_length) }
    let(:user2) { build(:user, :with_length) }

    it { expect(user1.nickname).to eq('User 0001') }
    it { expect(user2.nickname).to eq('User 0002') }
  end

  context 'with name and length' do
    let(:user1) { build(:user, :with_name_and_length) }
    let(:user2) { build(:user, :with_name_and_length) }

    it { expect(user1.nickname).to eq('Another Nickname 01') }
    it { expect(user2.nickname).to eq('Another Nickname 02') }
  end
end
