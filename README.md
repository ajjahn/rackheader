# Rack::Header

Rack Middleware for overriding and adding additional HTTP response headers

## Installation

Add this line to your application's Gemfile:

    gem 'rackheader'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rackheader

## Usage

```ruby
# config.ru
require 'rackheader'
require 'rack/lobster'

use Rack::Header, 'Access-Control-Allow-Origin' => '*', 'Foo' => 'Bar', 'Biz' => 'Baz'
run Rack::Lobster.new
```

    $ rackup config.ru

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
