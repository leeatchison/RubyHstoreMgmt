# RubyHstoreMgmt

Assign roles to users, accounts, user_accounts, and other models in a Ruby on Rails application.

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add RubyHstoreMgmt
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install RubyHstoreMgmt
```

## Usage

TBD

```ruby
class MyModel < ApplicationRecord
  acts_as_ruby_hstore_mgmt
  xxx
end
```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/leeatchison/RubyHstoreMgmt.

To build a new gem (authorized deployers only can do the push):

```bash
gem build RubyHstoreMgmt.gemspec
gem push RubyHstoreMgmt-#.#.#.gem
```
