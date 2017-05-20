source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.0'
gem 'rails', '~> 5.0.2'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'rack-cors'
gem 'devise_token_auth'
gem 'active_model_serializers', '~> 0.10.0'
gem 'activeadmin-audit'
gem 'simple_form'
gem 'nested_form'
gem 'kaminari'
gem 'font-awesome-rails'
gem 'momentjs-rails'
gem 'bootstrap-datepicker-rails'

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
end

# Localization
gem 'traco'
gem 'rails-i18n', '~> 5.0.0'

# Geo
gem 'geocomplete_rails'
gem 'gmaps4rails'
gem 'geocoder'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry'
end
group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'activeadmin', '~> 1.0.0.pre2'
gem 'bootstrap', '~> 4.0.0.alpha6'
gem 'devise'
gem 'haml-rails'
gem 'high_voltage'
gem 'pg'
group :development do
  gem 'better_errors'
  gem 'capistrano', '~> 3.0.1'
  gem 'capistrano-bundler'
  gem 'capistrano-rails', '~> 1.1.0'
  gem 'capistrano-rails-console'
  gem 'capistrano-rvm', '~> 0.1.1'
  gem 'html2haml'
  gem 'rails_layout'
  gem 'spring-commands-rspec'
end
group :development, :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec-rails'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
end
