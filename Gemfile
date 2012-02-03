source 'https://rubygems.org'

gem 'rails', '3.2.1'
gem 'mysql2'
gem 'resque'
gem 'resque-scheduler'
gem 'jquery-rails'
gem 'rails3-generators'
gem 'haml-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass',      '~> 0.12.alpha'
  gem "twitter-bootstrap-rails", "~> 2.0rc0"
end


group :development do
  # The next two are needed by ruby-debug when running in 1.9.3
  platform :ruby_19 do
    gem 'linecache19', :git => 'git://github.com/mark-moseley/linecache'
    gem 'ruby-debug-base19x', '~> 0.11.30.pre4'
    gem "ruby-debug19"
  end
end
group :development, :test do
  gem 'rspec-rails'
end

group :test do
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'resque_unit'
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner'
end
