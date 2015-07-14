# FormData

[![Gem Version](https://badge.fury.io/rb/form_data.png)](http://rubygems.org/gems/form_data)
[![Build Status](https://secure.travis-ci.org/httprb/form_data.rb.png?branch=master)](http://travis-ci.org/httprb/form_data.rb)
[![Code Climate](https://codeclimate.com/github/httprb/form_data.rb.png)](https://codeclimate.com/github/httprb/form_data.rb)
[![Coverage Status](https://coveralls.io/repos/httprb/form_data.rb/badge.png?branch=master)](https://coveralls.io/r/httprb/form_data.rb)

Utility-belt to build form data request bodies.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'form_data'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install form_data


## Usage

``` ruby
form = FormData.create({
  :username     => "ixti",
  :avatar_file  => FormData::File.new("/home/ixti/avatar.png")
})

# Assuming socket is an open socket to some HTTP server
socket << "POST /some-url HTTP/1.1\r\n"
socket << "Host: example.com\r\n"
socket << "Content-Type: #{form.content_type}\r\n"
socket << "Content-Length: #{form.content_length}\r\n"
socket << "\r\n"
socket << form.to_s
```


## Supported Ruby Versions

This library aims to support and is [tested against][travis] the following Ruby
versions:

* Ruby 1.9.3
* Ruby 2.0.0
* Ruby 2.1.x
* Ruby 2.2.x

If something doesn't work on one of these versions, it's a bug.

This library may inadvertently work (or seem to work) on other Ruby versions,
however support will only be provided for the versions listed above.

If you would like this library to support another Ruby version or
implementation, you may volunteer to be a maintainer. Being a maintainer
entails making sure all tests run and pass on that implementation. When
something breaks on your implementation, you will be responsible for providing
patches in a timely fashion. If critical issues for a particular implementation
exist at the time of a major release, support for that Ruby version may be
dropped.

[travis]: http://travis-ci.org/httprb/form_data.rb


## Contributing

1. Fork it ( https://github.com/httprb/form_data.rb/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## Copyright

Copyright (c) 2015 Aleksey V Zapparov.
See [LICENSE.txt][1] for further details.

[1]: https://github.com/ixti/form_data.rb/blob/master/LICENSE.txt