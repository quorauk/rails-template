gem 'haml-rails', "~> 2.0"
gem 'html2haml'

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'pry'
end

gem_group :test do
  gem 'capybara'
end

after_bundle do
  rails_command "generate rspec:install"
  rails_command "generate haml:application_layout convert"
  rails_command "haml:erb2haml"
end
