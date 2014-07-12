lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.authors                   = ['Andrey Chernih']
  spec.description               = 'Adds ability to open rails server in browser with -o option'
  spec.email                     = %w(andrey.chernih@gmail.com)
  spec.files                     = %w(rails-opener.gemspec)
  spec.files                     += Dir.glob('lib/**/*.rb')
  spec.homepage                  = 'http://github.com/andreychernih/rails-opener'
  spec.licenses                  = ['Apache 2.0']
  spec.name                      = 'rails-opener'
  spec.require_paths             = %w(lib)
  spec.required_rubygems_version = '>= 1.3.5'
  spec.summary                   = spec.description
  spec.version                   = '1.0.0'

  spec.add_dependency 'launchy', '~> 2.4.2'
end
