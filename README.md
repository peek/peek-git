# Glimpse::Git

Provide a glimpse into the Git info of your Rails application.

Things this glimpse view provides:

- View the current branch name
- Compare the diff of the current revision on your GitHub repo

## Installation

Add this line to your application's Gemfile:

    gem 'glimpse-git'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install glimpse-git

## Usage

Add the following to your `config/initializers/glimpse.rb`: 

```ruby
Glimpse.into Glimpse::Views::Git
```

This view provides a few niceties

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
