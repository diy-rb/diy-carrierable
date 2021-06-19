lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'diy/carrierable/version'

Gem::Specification.new do |specification|
  specification.name = 'diy-carrierable'
  specification.version = DIY::Carrierable::VERSION
  specification.summary = 'Yet another result wrapper'
  specification.authors = ['Evgeny Boyko', 'Timur Radzhabov']
  specification.email = %w[mailbox@redo.moscow]
  specification.license = 'proprietary'

  specification.add_development_dependency 'rspec', '~> 3.10'
end
