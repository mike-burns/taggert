# Taggert

Tag files per directory.

This is a command-line tool for tagging files in a directory or
subdirectory. This allows an extended hierarchy ontop of the existing
filesystem hierarchy.

For example, if you have:

    app/
      assets/
        javascripts/
          hate_the_blind.js.coffee
      controllers/
        application_controller.rb
        events_controller.rb
        files_controller.rb
      presenters/
        events_json.rb

You can add additional, cross-cutting tags:

    taggert add javascript app/assets/javascripts/hate_the_blind.js.coffee app/controllers/events_controller.rb
    taggert add app-specific app/*

And later find those files:

    taggert ls javascript

And even delete some tags:

    taggert rm app-specific app/presenters

## Installation

Install it yourself as:

    % gem install taggert

## Usage

    taggert add admin ssl.key
    taggert ls admin
    taggert rm admin ssl.key

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright 2013 Mike Burns
