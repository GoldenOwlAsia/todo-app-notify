source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end
gem 'rails', '~> 5.1.0'
gem 'puma', '~> 3.0'
gem 'responders', '~> 2.0'
gem 'active_model_serializers', '~> 0.8.0'
gem 'rails_param'
gem 'rack-cors', require: 'rack/cors'
gem 'gcm'

group :development, :test do
  gem 'pry-rails'
  gem 'byebug', platform: :mri
  gem 'sqlite3'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'dotenv-rails'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
