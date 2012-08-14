# Resque::Enqueue::Arity

Validates the arguments when queueing a job with Resque. Rather than getting an ArgumentError in the job, you get it at the point the job is queued.

*NB:* We only load this gem into the test environment, so these errors aren't raised in production.

## Installation

Add this line to your application's Gemfile:

    gem 'resque-enqueue-arity'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install resque-enqueue-arity

## Usage

Just require it, and it's live. Inspects the number of arguments a job requires on-the-fly, so no dev intervention is required.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
