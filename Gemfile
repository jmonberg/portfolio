source 'https://rubygems.org'

gem 'rails'
gem 'pg'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'bootstrap-sass', '~> 3.3.5'
gem 'sass'
gem 'devise'

gem 'puma'

group :development do
  gem 'byebug'
  gem 'web-console'
  gem 'spring'
  gem 'quiet_assets'
  gem 'capistrano',         require: false
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

group :test, :development do
  gem 'rspec-rails'
  gem 'launchy'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'capistrano-secrets-yml', '~> 1.0.0'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'simplecov', require: false
  gem 'factory_girl_rails'

end


gem 'rails_12factor', group: :production
ruby '2.2.2'
