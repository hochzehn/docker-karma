# Jasmine tests + Karma + PhantomJS in Docker

Run [Jasmine][4] tests using [Karma][2] and [PhantomJS][3] in a [Docker][1] container.

## Usage

    docker run --rm -it -v $PWD:/opt/karma hochzehn/karma-jasmine-phantomjs

Run this from your project root directory, or wherever your `karma.conf.js` is located.

### Plugins / Reporter

#### junit

This container supports junit report generation. Apply in `karma.conf.js` like this:

    reporters: ['junit'],

    junitReporter: {
        outputDir: 'test-reports/',
        outputFile: 'junit.xml',
        useBrowserName: false
    }

#### Coverage

This container supports code coverage. Apply in `karma.conf.js` like this:

    reporters: ['coverage'],

    preprocessors: {
        'path/to/src/**.js': 'coverage'
    },

    coverageReporter: {
        reporters: [
            { type: 'text-summary' },
            { type: 'html', dir: 'test-reports' },
            { type: 'clover', dir: 'test-reports', subdir: '.', file: 'clover.xml' }
        ]
    },

You probably want to ignore `/test-reports` from your CVS as well.

## Development

### Build

    docker build -t karma-jasmine-phantomjs .

### Run

    docker run --rm -it -v $PWD:/opt/karma karma-jasmine-phantomjs

[1]: https://www.docker.com/
[2]: http://karma-runner.github.io/
[3]: http://phantomjs.org/
[4]: https://jasmine.github.io/
