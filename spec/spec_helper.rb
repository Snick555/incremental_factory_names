require 'incremental_factory_names'

class FactoryUser
  include IncrementalFactoryNames

  def initialize
    @instance = self
  end
end
