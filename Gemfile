source 'https://rubygems.org'
ruby '2.3.3'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '5.0.2'
gem 'puma'
gem 'pg'
gem 'figaro'
gem 'jbuilder', '~> 2.0'
gem 'redis'

gem 'sass-rails'
gem 'jquery-rails'
gem 'uglifier'
gem 'bootstrap-sass'
gem 'font-awesome-sass'
gem 'simple_form'
gem 'autoprefixer-rails'
gem "cloudinary", "1.1.0"
gem "attachinary", github: "assembler/attachinary"
gem "jquery-fileupload-rails"
gem 'coffee-rails'
gem 'bootsy'
gem 'rails4-autocomplete'
gem "jquery-ui-rails"
gem 'devise'
gem 'pundit'
gem 'will_paginate'
gem 'pg_search'
gem 'activeadmin', github: 'activeadmin/activeadmin'

group :development, :test do
  gem 'binding_of_caller'
  gem 'better_errors'

  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'spring'
  gem 'listen', '~> 3.0.5'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
