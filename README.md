# incremental_factory_names helps generate incremental factory names for preventing randomly failure specs

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'incremental_factory_names'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install incremental_factory_names

## Testing

Simply run with rake

```
rake
```

## Usage

spec/spec_helper.rb or another place you have for including modules:

```ruby
include IncrementalFactoryNames
```

and in any factory you need to have incremental names: 
```ruby
factory :user do
  ...	
  incremental_factory_name :name # returns 'User 001', 'User 002', etc
  ...
```

with additional params:
```ruby
  ...
  incremental_factory_name :name, name: 'Name' # returns 'Name 001', 'Name 002', etc
  ...
  incremental_factory_name :name, length: 5 # returns 'User 00001', 'User 00002', etc
  ...
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [incremental_factory_names](https://github.com/Snick555/incremental_factory_names). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
