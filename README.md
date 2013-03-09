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

You will need to set the GitHub project's name with owner if you plan on
comparing the current ref against your default branch on GitHub.

```ruby
# nwo - name with owner - owner/name
Glimpse.into Glimpse::Views::Git, :nwo => 'dewski/json_builder'
```

You can also manually set each of the following optional options:

- SHA
- Default Branch (master by default)
- Branch Name

```ruby
Glimpse.into Glimpse::Views::Git, :sha => '740f6b7b11b8717efaf51ddb98ce23394544f7e0', :default_branch => 'rails4.0', :branch_name => 'integration'
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
