source 'https://rubygems.org'
ruby '2.4.2'

# Primary gems
gem 'rails', '4.2.10'
gem 'pg'
gem 'sorcery'

# Asset gems
gem 'neat'
gem 'haml-rails'
gem 'normalize-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem "paperclip", "~> 4.2"
gem "paperclip-dropbox", ">= 1.1.7"

gem 'turbolinks'
gem "figaro"

# Feature gems
gem 'country_select', github: 'stefanpenner/country_select'

group :development, :test do
  gem 'spring'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_bot_rails'
end

gem 'pry'
group :test do
  gem 'faker'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'launchy'
end

group :production do
  gem 'rails_12factor'
end
