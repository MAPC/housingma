source 'https://rubygems.org'
ruby '2.6.5'

gem 'rails', '6.0.2.1'
gem 'sassc', '~> 2.2', '>= 2.2.1'
gem 'sassc-rails', '~> 2.1', '>= 2.1.2'
gem "font-awesome-rails"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg', '1.2.2'
gem 'activerecord-postgis-adapter', '6.0.0'

gem 'rgeo', '2.1.1'
gem 'rgeo-geojson', '2.1.1'

#    app server
gem 'puma', '4.3.1'
gem 'dotenv-rails', '2.7.5'

#    Render HAML content for narratives
gem 'haml', '5.1.2'
gem 'redcarpet', '3.5.1' # Render Markdown in HAML
gem 'd3_rails', '~> 4.1', '>= 4.1.1'
gem 'tufted-rails', '0.0.2' # Terse D3 by Matt Gardner (allthesignals)
gem 'crease', '0.1.2' # Simpler text helpers by Matt Cloyd (beechnut)

#    Export Word files
gem 'docx_replace', git: "git://github.com/beechnut/docx_replace.git"

#    Autocomplete
gem 'twitter-typeahead-rails', '0.11.1'
gem 'bootstrap-typeahead-rails', '0.10.5.1'

#      For user management of plan
# gem 'devise'
# gem 'rails_admin'
# gem 'cancan'

# TODO: Consider adding machine-readability
gem 'rabl', '0.14.2' # RABL templates for JSON
gem 'oj',   '3.10.2'


group :development do
  gem 'capistrano',      '< 3.0'
  gem 'net-ssh',         '5.2.0'
  gem 'net-ssh-gateway', '2.0.0'
  gem 'capistrano-unicorn', '0.2.0', :require => false
  gem 'better_errors', '2.5.1'
  gem 'binding_of_caller', '0.8.0'
end

group :development, :test do
  gem 'progress_bar', '1.3.1'
  gem 'listen'

  gem 'rspec-rails', '3.9.0'
  gem 'capybara',    '3.31.0'
  gem 'launchy', '2.4.3'
end

group :test do
  gem 'rake', '13.0.1'
  gem "codeclimate-test-reporter", '1.0.9', require: nil
end

group :production do
  gem 'rails_12factor', '0.0.3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '5.0.0'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '0.12.3', platforms: :ruby

  gem 'uglifier', '4.2.0'
end

gem 'jquery-rails', '4.3.5'
