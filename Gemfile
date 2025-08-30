source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'rails', '~> 6.1.7', '>= 6.1.7.8'
gem 'pg', '~> 1.5'
gem 'puma', '~> 6.4'
gem 'sass-rails', '>= 6.0.0' # Or replace with: gem 'dartsass-rails', '~> 0.6'
gem 'sassc', '~> 2.4' # Only if keeping sass-rails
gem 'terser', '~> 1.2' # Replaced uglifier
gem 'coffee-rails', '~> 5.0'
gem 'turbolinks', '~> 5.2'
gem 'jbuilder', '~> 2.12'
gem 'redis', '~> 5.3'
gem 'bcrypt', '~> 3.1.20'
gem 'bootsnap', '>= 1.18.0', require: false
gem 'jquery-rails', '~> 4.6'
gem 'mail', '~> 2.8'
gem 'aws-sdk-ssm', '~> 1.175'
gem 'capistrano-rails', '~> 1.6', group: :development

group :development, :test do
  gem 'byebug', '~> 11.1', platforms: [:mri, :mingw, :x64_mingw]
  gem 'annotate', '~> 3.2'
end

group :development do
  gem 'devise', '~> 4.9.4'
  gem 'pry-rails', '~> 0.3.11'
  gem 'better_errors', '~> 2.10'
  gem 'binding_of_caller', '~> 1.0'
  gem 'letter_opener', '~> 1.10'
  gem 'ancestry', '~> 4.3'
  gem 'faker', '~> 3.5'
  gem 'web-console', '>= 4.2.1'
  gem 'listen', '>= 3.9.0'
  gem 'spring', '~> 4.2'
  gem 'spring-watcher-listen', '~> 2.1'
end

group :test do
  gem 'capybara', '>= 3.40'
  gem 'selenium-webdriver', '~> 4.1'
  gem 'webdrivers', '~> 5.3'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]