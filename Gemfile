# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.1'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'rack-cors', '~> 1.1', '>= 1.1.1'
gem 'rails', '~> 6.0.3', '>= 6.0.3.1'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# this is a websocket-driver dependency
# earlier versions present vulnerability
gem 'websocket-extensions', '>= 0.1.5'

gem 'bootsnap', '>= 1.4.2', require: false
gem 'devise', '>= 4.7.1'
gem 'devise-jwt', '~> 0.6.0'
gem 'dotenv-rails', groups: %i[development test]

group :development, :test do
  gem 'pry', '>=0.13.1', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.2'
  gem 'spring', '>= 2.1.0'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
