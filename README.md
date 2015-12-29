# Kenshoo (Alpha)

Ruby client for [Kenshoo API](http://docs.api.kenshoo.com/).

## Installation

Add this line to your application's Gemfile:

    gem 'kenshoo'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kenshoo

## Usage Examples

### Returns a list of all defined reports
``` ruby
client = Kenshoo::Client.new(username: 'username', password: 'password', ks_id: 1234)
client.list
```

## Author
[Achmad Gozali](mailto:gozali@gmail.com)

## Contributing

1. Fork it ( http://github.com/gozali/kenshoo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright
Copyright (c) 2015 [Achmad Gozali](mailto:gozali@gmail.com).
See [LICENSE][license] for details.

[license]:   LICENSE.md