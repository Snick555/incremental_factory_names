require 'spec_helper'

describe 'IncrementalFactoryNames' do
  let(:factory_user) { FactoryUser.new }

  it 'returns factory name with number' do
    result = factory_user.incremental_factory_name(number: 99)

    expect(result).to eq('Factory User 099')
  end

  it 'returns custom name with number' do
    result = factory_user.incremental_factory_name(number: 99, name: 'Another Factory User')

    expect(result).to eq('Another Factory User 099')
  end

  it 'returns factory name with number with sprint' do
    result = factory_user.incremental_factory_name(number: 99, length: 5)

    expect(result).to eq('Factory User 00099')
  end

  it 'returns custom name with number with sprint' do
    result = factory_user.incremental_factory_name(number: 99, name: 'Another Factory User', length: 5)

    expect(result).to eq('Another Factory User 00099')
  end
end
