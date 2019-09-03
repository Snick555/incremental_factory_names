module IncrementalFactoryNames
  DEFAULT_LENGTH = 3

  def incremental_factory_name(number:, name: factory_name, length: DEFAULT_LENGTH)
    "#{name} #{sprintf("%0#{length}d", number)}"
  end

  def factory_name
    self.instance_variable_get('@instance').class.name.split(/(?=[A-Z])/).join(' ')
  end
end
