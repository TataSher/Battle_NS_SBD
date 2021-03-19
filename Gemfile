# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

# gem "rails"

source "https://rubygems.org" do

    group :test, :development do
      gem 'rspec', '~> 3.10'
      gem 'sinatra', '~>2.1.0'
      gem 'webrick', '~>1.7.0'
      gem 'shotgun', '~>0.9.2'
    end
end
  
ruby "2.7.2"

gem 'capybara', '~> 2.7', '>= 2.7.1'