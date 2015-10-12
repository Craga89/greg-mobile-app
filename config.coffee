exports.config =
  paths:
    public: 'public/'

  files:
    javascripts:
      joinTo:
        'js/app.js': /^app/
        'js/vendor.js': /^(vendor|bower_components)/

    stylesheets:
      defaultExtension: 'less'
      joinTo:
        'css/app.css': /^app/
        'css/vendor.css': /^vendor/
      order:
        before: [
          'vendor/css/*',
          'vendor/less/*'
        ]

  plugins:
    # Image optimizer
    path: 'img/'

    # LiveReload
    autoReload:
      enabled: true
      host: 'localhost'

    # Uglify
    uglify:
      enabled: false

    # PostCSS
    postcss:
      processors: [
        require('autoprefixer', [
          'last 2 versions',
          'ie 8',
          'ie 9'
        ]),
        require('csswring')
      ]

  # No CommonJS etc.
  modules:
    wrapper: false
    definition: false

  # Optimize outputs
  optimize: false
  minify: false

  # Production build
  overrides: 
    production:
      optimize: true
      minify: true

      plugins:
        autoReload: enabled: true
        uglify: enabled: true