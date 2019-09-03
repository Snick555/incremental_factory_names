module IncrementalFactoryNames
  DEFAULT_LENGTH = 3

  def incremental_factory_name(field_name, name: nil, length: DEFAULT_LENGTH)
    sequence(field_name) { |number| field_value(number, name || factory_name, length) }
  end

  def field_value(number, name, length)
    "#{name} #{sprintf("%0#{length}d", number)}"
  end

  def factory_name
    self.instance_variable_get('@instance').class.name.split(/(?=[A-Z])/).join(' ')
  end
end
