# Jasmine tests + Karma + PhantomJS in Docker

Run [Jasmine][4] tests using [Karma][2] and [PhantomJS][3] in a [Docker][1] container.

## Usage

    docker run --rm -it -v $PWD:/opt/karma hochzehn/karma-jasmine-phantomjs

Run this from your project root directory, or wherever your `karma.conf.js` is located.

### Code coverage

This container supports code coverage. Apply in `karma.conf.js` like this:

    reporters: ['progress', 'coverage'],

    preprocessors: {
        'path/to/src/**.js': 'coverage'
    },

    coverageReporter: {
        reporters: [
            {type: 'text-summary'},
            {type: 'html'},
            {type: 'clover', dir: 'coverage', subdir: '.', file: 'clover.xml'}
        ]
    },

You probably want to ignore `/coverage` from your CVS as well.

## Development

### Build

    docker build -rm -t karma-jasmine-phantomjs .

### Run

    docker run --rm -it -v $PWD:/opt/karma karma-jasmine-phantomjs

[1]: https://www.docker.com/
[2]: http://karma-runner.github.io/
[3]: http://phantomjs.org/
[4]: https://jasmine.github.io/
