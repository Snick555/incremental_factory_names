require 'incremental_factory_names'
require 'factory_bot'

include FactoryBot::Syntax::Methods
include IncrementalFactoryNames

class User
  attr_accessor :nickname
end

FactoryBot.define do
  factory :user do
    incremental_factory_name :nickname
  end

  trait :with_name do
    incremental_factory_name :nickname, name: 'Nickname'
  end

  trait :with_length do
    incremental_factory_name :nickname, length: 4
  end

  trait :with_name_and_length do
    incremental_factory_name :nickname, name: 'Another Nickname', length: 2
  end
end
