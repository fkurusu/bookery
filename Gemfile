source 'https://rubygems.org'
ruby '2.1.8'
gem 'rake', '< 11.0'
gem 'rails', '4.1.1'
gem 'bundler', '1.15.1'

# Use SCSS for stylesheets
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
# gem 'therubyracer', platforms: :ruby
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

# Added for the project

gem 'bootstrap-sass'
gem 'bootstrap-form'
gem 'font-awesome-rails'
gem 'pg', '0.20'
gem 'bcrypt'

group :test do
  gem 'database_cleaner'
  gem 'shoulda-matchers'
  gem 'vcr'
  gem 'fabrication'
  gem 'faker'
  gem 'capybara'
  gem 'launchy'
end

group :test, :development do
  gem 'pry'
  gem 'pry-nav'
  gem 'rspec-rails'
end

group :development do
  gem 'thin'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :production do
  gem 'rails_12factor'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end
