gem_group :development, :test do
  gem 'rspec-rails'
end

after_bundle do
  rails_command "generate rspec:install"
end
